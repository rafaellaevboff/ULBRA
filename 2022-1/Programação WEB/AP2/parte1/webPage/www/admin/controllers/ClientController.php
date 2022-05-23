<?php

class ClientController{

    var $ClientModel;

    //função construtora: function __contruct(){...};
    //garante que para acessar precisa estar logado, se copiar e colar o link só abrirá se tiver logado, se salvar o link e alguém que não esteja logado tente entrar ele n vai conseguir por causa dessa função construtora. Ela faz a funçaõ do if(!isset($_SESSION['user])) que tem no index() na Main Controller. No momento que a classe (New ClientController no index) é criada essa verificação, ela é chamada
    function __construct(){
        if(!isset($_SESSION['user'])){
            header('Location:index.php?controller=main&action=login');
        }
        require_once('models/ClientModel.php');
        $this -> ClientModel = new ClientModel();
    }
    //se usuários específicos podem alterar, outros criar, outros listar, tem q fazer método a método

    function ListClients(){
        $result = $this -> ClientModel -> ListClients();
        $arrayClients = array();
        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }
        require_once('views/templates/header.php');
        require_once('views/client/listClients.php');
        require_once('views/templates/footer.php');
    }

    function insertClient(){
        require_once('views/templates/header.php');
        require_once('views/client/insertClient.php');
        require_once('views/templates/footer.php');
    }

    function insertClientAction(){
        $client = array(
            'name' => $_POST['name'],
            'phone' => $_POST['phone'],
            'email' => $_POST['email'],
            'address' => $_POST['address']
        );
        //var_dump($client)
        $idClient = $this -> ClientModel -> insertClient($client);

        //gravar o arquivo na pasta img
        $this -> savePhoto($idClient);

        header('Location:index.php?controller=client&action=listClients');
    }

    function updateClient($idClient){
        $result = $this -> ClientModel -> ListClient($idClient);
        //verificar se existe client:
        if($client = $result->fetch_assoc()){
            //var_dump($client);
            require_once('views/templates/header.php');
            require_once('views/client/updateClient.php');
            require_once('views/templates/footer.php');
        }
    }

    function updateClientAction($idClient){
        $client = array(
            'idClient' => $idClient,
            'name' => $_POST['name'],
            'phone' => $_POST['phone'],
            'email' => $_POST['email'],
            'address' => $_POST['address']
        );
        //var_dump($client)
        $this -> ClientModel -> updateClient($client);
        $this -> savePhoto($idClient);
        header('Location:index.php?controller=client&action=listClients');
    }

    function deleteClient($idClient){
        $this -> ClientModel -> deleteClient($idClient);

        $linkPhoto = "assets/img/clients/{$idClient}.jpg";
        if(is_file($linkPhoto)){
            unlink($linkPhoto);
        }

        header('Location:index.php?controller=client&action=listClients');
    }

    public function savePhoto($idClient){
        if(isset($_FILES["photo"]) && $_FILES['photo']['name'] != ''){
            $foto_temp = $_FILES["photo"]["tmp_name"];	//pega o caminho temporário do arquivo
            $foto_name = $_FILES["photo"]["name"];		//pega o nome
        
            $extensao = str_replace('.','',strrchr($foto_name, '.')); //strtolower(end(explode('.', $foto_name))); //seleciona a extenção da imagem
            $max_width = 600; //define largura máxima
            $max_height = 600; //define altura míxima
        
            // Carrega a imagem 
            $img = null;
        
            //Transforma a imagem em JPG
            if ($extensao == 'jpg' || $extensao == 'jpeg') { 
                $img = imagecreatefromjpeg($foto_temp);
            } else if ($extensao == 'png') { 
                $img = imagecreatefrompng($foto_temp);
            } else if ($extensao == 'gif') { 
                $img = imagecreatefromgif($foto_temp); 
            }  else     
                $img = imagecreatefromjpeg($foto_temp); 
        
            // Se a imagem foi carregada com sucesso, testa o tamanho da mesma
            if ($img) { 
                // Pega o tamanho da imagem e calcula proporção de resize 
                $width  = imagesx($img); 
                $height = imagesy($img); 
                $scale  = min($max_width/$width, $max_height/$height); 
                // Se a imagem é maior que o permitido, encolhe ela! 
                if ($scale < 1) { 
                    $new_width = floor($scale*$width); 
                    $new_height = floor($scale*$height);
                    // Cria uma imagem temporária 
                    $tmp_img = imagecreatetruecolor($new_width, $new_height);
                    // Copia e resize a imagem velha na nova     
                    imagecopyresampled($tmp_img, $img, 0, 0, 0, 0, 
                    $new_width, $new_height, $width, $height);  
                    imagedestroy($img); 
                    $img = $tmp_img; 
                }           
            }
        
            //cria imagem no diretório @imagejpeg($img,"diretorio/".$id_noticia) se já tiver com este nome vai substituir
            $localFile = "assets/img/clients/{$idClient}.jpg";
            imagejpeg($img, $localFile); 
            
        }
    }
    
}

?>
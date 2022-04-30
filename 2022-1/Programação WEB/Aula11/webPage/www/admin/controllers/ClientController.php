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
        $result = $this -> ClientModel -> insertClient($client);
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
        header('Location:index.php?controller=client&action=listClients');
    }

    function deleteClient($idClient){
        $this -> ClientModel -> deleteClient($idClient);
        header('Location:index.php?controller=client&action=listClients');
    }
    
}

?>
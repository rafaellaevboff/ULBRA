<?php

class ClientController{

    //função construtora: function __contruct(){...};
    //garante que para acessar precisa estar logado, se copiar e colar o link só abrirá se tiver logado, se salvar o link e alguém que não esteja logado tente entrar ele n vai conseguir por causa dessa função construtora. Ela faz a funçaõ do if(!isset($_SESSION['user])) que tem no index() na Main Controller. No momento que a classe (New ClientController no index) é criada essa verificação, ela é chamada
    function __construct(){
        if(!isset($_SESSION['user'])){
            header('Location:index.php?controller=main&action=login');
        }
    }
    //se usuários específicos podem alterar, outros criar, outros listar, tem q fazer método a método

    function ListClients(){

        require_once('models/ClientModel.php');
        $clientModel = new ClientModel();
        $result = $clientModel -> ListClients();

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
        require_once('views/client/insertClients.php');
        require_once('views/templates/footer.php');
    }

    function insertClientAction(){
        $client = array(
            'nome' => $_POST['nome'],
            'email' => $_POST['email'],
            'telefone' => $_POST['telefone'],
            'endereco' => $_POST['endereco']
        );

        require_once('models/ClientModel.php');
        $clientModel = new ClientModel();
        $result = $clientModel -> insertClient($client);

        header('Location:index.php?controller=clients&action=listClients')
    }
}

?>
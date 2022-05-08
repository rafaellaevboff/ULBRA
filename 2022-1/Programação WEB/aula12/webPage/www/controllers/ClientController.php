<?php

class ClientController{
    
    var $Result;

    function __construct(){
        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $this -> Result = $ClientModel -> ListClients();
    }

    function insertClient(){
        require_once('views/templates/header.php');
        require_once('views/client/insertClient.php');
        require_once('views/templates/footer.php');
    }

    function insertClientAction(){
        $client = array(
            'nome' => $_POST['nome'],
            'email' => $_POST['email'],
            'telefone' => $_POST['telefone'],
            'endereco' => $_POST['endereco']
        );
        //var_dump($client);
        require_once('views/templates/header.php');
        require_once('views/client/insertClientAction.php');
        require_once('views/templates/footer.php');
    }

    function ListClients(){

        $arrayClients = array();
        while($line = $this -> Result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }
        //var_dump($arrayClients);
        require_once('views/templates/header.php');
        require_once('views/client/listClients.php');
        require_once('views/templates/footer.php');
    }
}

?>
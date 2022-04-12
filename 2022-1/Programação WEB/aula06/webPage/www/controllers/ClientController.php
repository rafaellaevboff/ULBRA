<?php

class ClientController{
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
        require_once('models/ClientModel.php');
        $clientModel = new ClientModel();
        $result = $clientModel -> ListClients();

        $arrayClients = array();
        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }
        //var_dump($arrayClients);

        require_once('views/templates/header.php');
        require_once('views/client/listClients.php');
        require_once('views/templates/footer.php');
    }
}

?>
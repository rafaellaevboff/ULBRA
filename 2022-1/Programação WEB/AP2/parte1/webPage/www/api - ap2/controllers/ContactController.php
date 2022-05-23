<?php

class ContactController{

    var $ContactModel;

    function __construct(){
        require_once('models/ContactModel.php');
        $this -> ContactModel = new ContactModel();
    }

    function ListContacts(){
        $result = $this -> ContactModel -> ListContacts();
        $arrayContato = array();
        while($line = $result -> fetch_assoc()){
            array_push($arrayContato, $line);
        }
        header('Content-Type: application/json');
        echo json_encode($arrayContato);
    }

    function listContact($idContact){
        $result = $this -> ContactModel -> ListContact($idContact);
        if($contato = $result->fetch_assoc()){
            header('Content-Type: application/json');
            echo json_encode($contato);
        }else{
            header('Content-Type: application/json');
            echo('{"error": 01 "Contato não encontrado"}');
        }
    }

    function insertContact(){
        $contact = json_decode(file_get_contents('php://input'));
        $arrayContact = array(
            'name' => $contact -> name,
            'email' => $contact -> email,
            'message' => $contact -> message,
            'status' => $contact -> status,
            'description' => $contact -> description,
        );
        $idContact = $this -> ContactModel -> insertContact($arrayContact);
        header('Content-Type: application/json');
        echo('{"cod": 01 "Contato foi cadastrado"}');
    }

    function updateContact($idContact){
        $contact = json_decode(file_get_contents('php://input'));
        
        $arrayContact = array(
            'idContact' => $idContact,
            'name' => $contact -> name,
            'email' => $contact -> email,
            'message' => $contact -> message,
            'status' => $contact -> status,
            'description' => $contact -> description,
        );
        $this -> ContactModel -> updateContact($arrayContact);
    }

    function deleteContact($idContact){
        $this -> ContactModel -> deleteContact($idContact);
    }    
}
?>
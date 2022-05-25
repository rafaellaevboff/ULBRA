<?php

class ContactModel{
    
    var $Connection;

    function __construct(){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass -> openConnect();
        $this -> Connection = $ConnectClass -> getConn();
    }

    function listContacts(){
        $sql = "SELECT * FROM contacts";
        return $this -> Connection -> query($sql);
    }

    function listContact($idContact){
        $sql = "SELECT * FROM contacts where idContact={$idContact}";
        return $this -> Connection -> query($sql);
    }

    function insertContact($contact){
        //var_dump($contact);
        $sql = "
            INSERT INTO
            contacts (name, email, message)
            VALUES(
                '{$contact['name']}',
                '{$contact['email']}',
                '{$contact['message']}'
            )
        ";
        //return var_dump($sql);
        $this -> Connection -> query($sql);
        return $this -> Connection -> insert_id;
    }

    function updateContact($contact){
        $sql = "
            UPDATE
                contacts
            SET
                name='{$contact['name']}',
                email='{$contact['email']}',
                message='{$contact['message']}',
                status='{$contact['status']}',
                description='{$contact['description']}'
            WHERE
                idContact = '{$contact['idContact']}';
        ";
        //var_dump($sql);
        return $this -> Connection -> query($sql);
    }

    function deleteContact($idContact){
        $sql = "
            DELETE FROM
                contacts
            WHERE
                idContact={$idContact}
        ";
        //var_dump($sql);
        return $this -> Connection -> query($sql);
    }
}

?>
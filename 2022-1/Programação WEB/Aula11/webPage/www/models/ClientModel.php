<?php

class ClientModel{

    var $Connection;

    function __construct(){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass -> openConnect();
        $this -> Connection = $ConnectClass -> getConn();
    }
    
    function listClients(){
        $sql = 'SELECT * FROM clients';
        return $this -> Connection -> query($sql);
        //var_dump($conn -> query($sql));
    }
}

?>
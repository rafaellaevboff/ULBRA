<?php

class UserModel{ //uma model serve para acessar o banco de dados

    var $Connection;

    function __construct(){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass -> openConnect();
        $this -> Connection = $ConnectClass -> getConn();
    }

    function getUser($userName){
        $sql = "
            SELECT * FROM users
            WHERE user='{$userName}'
        ";
        return $this -> Connection -> query($sql);
    }
}

?>
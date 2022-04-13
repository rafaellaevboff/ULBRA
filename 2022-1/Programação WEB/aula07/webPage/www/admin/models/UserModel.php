<?php

class UserModel{

    function getUser(){
        require_once('db/ConnectClass.php');
        $connectClass = new ConnectClass();
        $connectClass -> openConnect();
        $conn = $connectClass -> getConn();

        $sql = "
            SELECT * FROM users
            WHERE user = '{$login}'
        ";

        return $conn -> query($sql);

    }

}

?>
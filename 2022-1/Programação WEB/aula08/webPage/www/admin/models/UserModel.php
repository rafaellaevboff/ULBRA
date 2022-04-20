<?php

class UserModel{ //uma model serve para acessar o banco de dados

    function getUser($login){
        require_once('db/ConnectClass.php');
        $connectClass = new ConnectClass();
        $connectClass -> openConnect();
        $conn = $connectClass -> getConn();

        $sql = "
            SELECT * FROM users
            WHERE user='{$login}'
        ";

        return $conn -> query($sql);
    }
}

?>
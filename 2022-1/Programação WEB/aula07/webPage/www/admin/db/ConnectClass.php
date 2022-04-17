<?php

class ConnectClass{

    var $conn;

    //abre a conexão
    public function openConnect(){
       $serverName = 'db';
       $userName = 'root';
       $password = 'test';
       $dbName = 'pw_exemple';

       $this -> conn = new mysqli($serverName, $userName, $password, $dbName);

        if($this -> conn -> connect_error){
            die("Conexão com o Banco de Dados falhou -> ". $this -> conn -> connect_error);
        }
       
    }

    //devolve a conexão
    public function getConn()
    {
        return $this -> conn;
    }
}
?>
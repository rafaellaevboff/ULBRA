<?php

class ConnectClass{

    var $connection;

    //abre a conexão
    public function openConnect(){
       $serverName = 'db';
       $userName = 'pw';
       $password = 'pw123';
       $dbName = 'pw_exemple';

       $this -> connection = new mysqli($serverName, $userName, $password, $dbName);

        if($this -> connection -> connect_error){
            die("Conexão com o Banco de Dados falhou -> ". $this -> connection -> connect_error);
        }
    }

    //devolve a conexão
    public function getConn(){
        return $this -> connection;
    }
}
?>
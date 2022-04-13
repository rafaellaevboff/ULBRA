<?php

class MainController{

    function index(){
        //testar se o usuário está logado
        //var_dump($_SESSION);
        if($_SESSION['user']){
            require_once("iews/templates/header.php");
            require_once('views/main/home.php');
            require_once('views/templates/footer.php');
        }else{
            header('Location:index.php?controller=main&action=login');
        }
    }

    function login(){
        require_once('views/main/login.php');
    }

    function logout(){
        session_destroy();
        header('Location:index.php');
    }

}

?>
<?php

class MainController{ //verifica se o usuário está logado

    function index(){
        //testar se o usuário está logado
        //var_dump($_SESSION); //identificar e guardar informações
        if(isset($_SESSION['user'])){
            require_once("views/templates/header.php");
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
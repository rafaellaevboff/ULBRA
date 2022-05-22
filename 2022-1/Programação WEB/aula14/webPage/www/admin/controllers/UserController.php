<?php

class UserController{

    var $UserModel;

    function __construct(){
        require_once('models/UserModel.php');
        $this -> UserModel = new UserModel();
    }

    function validatelogin(){
        $login = $_POST['login'];
        $password = $_POST['password'];
        $result = $this -> UserModel -> getUser($login);
        if($user = $result -> fetch_assoc()){ //se o usuário está cadastrado
            if($user['password'] == $password){ //verificar se a senha está certa
                $_SESSION['user'] = $user;
                header('Location:index.php?controller=main&action=index');
            }
            else{
                print('Senha incorreta!');
            }
        }else{ //se o usuário não está cadastrado
            print('Usuário não existe!');
        }
    }
}

?>
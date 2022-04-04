<?php

//vai ser um arquivo de roteamento
//SEMPRE deixar ele dentro do www, sem estar em nenhuma pasta

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if(!isset($_GET["controller"])){
    require_once("controllers/SiteController.php");
    $site = new SiteController();
    $site -> home();

}else{
    switch ($_REQUEST['controller']){
        case 'site':
            require_once("controllers/SiteController.php");
            $site = new SiteController();
            if(!isset($_GET['action'])){
                $site -> home();
            }else{
                switch($_REQUEST['action']){
                    case 'home':
                        $site -> home();
                    break;

                    case 'about':
                        $site -> about();
                    break;

                    case 'products':
                        $site -> products();
                    break;

                    case 'contact':
                        $site -> contact();
                    break;
                }
            }
        break;

        case 'client':
            require_once("controllers/ClientController.php");
            $client = new ClientController();

            if(!isset($_GET['action'])){
                $client -> insertClient();
            }else{
                switch($_REQUEST['action']){
                    case 'insertClient':
                        $client -> insertClient();
                    break;

                    case 'insertClientAction':
                        $client -> insertClientAction();
                    break;
                }
            }
        break;

        case 'cadastro':
            require_once("controllers/ClientesController.php");
            $cadastro = new ClientesController();

            if(!isset($_GET['action'])){
                $cadastro -> insertCadastro();
            }else{
                switch($_REQUEST['action']){
                    case 'insertCadastro':
                        $cadastro -> insertCadastro();
                    break;

                    case 'showCadastro':
                        $cadastro -> showCadastro();
                    break;
                }
            }
    }

}
<?php

//vai ser um arquivo de roteamento
//SEMPRE deixar ele dentro do www, sem estar em nenhuma pasta

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if(!isset($_GET["controller"])){
    require_once("controllers/SiteController.php");
    $SiteController = new SiteController();
    $SiteController -> home();
}else{
    switch ($_REQUEST['controller']){
        case 'site':
            require_once("controllers/SiteController.php");
            $SiteController = new SiteController();
            if(!isset($_GET['action'])){
                $SiteController -> home();
            }else{
                switch($_REQUEST['action']){
                    case 'home':
                        $SiteController -> home();
                    break;

                    case 'about':
                        $SiteController -> about();
                    break;

                    case 'products':
                        $SiteController -> products();
                    break;

                    case 'contact':
                        $SiteController -> contact();
                    break;
                }
            }
        break;

        case 'client':
            require_once("controllers/ClientController.php");
            $ClientController = new ClientController();
            if(!isset($_GET['action'])){
                $ClientController -> insertClient();
            }else{
                switch($_REQUEST['action']){
                    case 'insertClient':
                        $ClientController -> insertClient();
                    break;

                    case 'insertClientAction':
                        $ClientController -> insertClientAction();
                    break;

                    case 'listClients':
                        $ClientController -> listClients();
                    break;
                }
            }
        break;

        case 'cadastro':
            require_once("controllers/ClientesController.php");
            $ClientesController = new ClientesController();
            if(!isset($_GET['action'])){
                $ClientesController -> insertCadastro();
            }else{
                switch($_REQUEST['action']){
                    case 'insertCadastro':
                        $ClientesController -> insertCadastro();
                    break;

                    case 'showCadastro':
                        $ClientesController -> showCadastro();
                    break;
                }
            }
        break;
    }

}
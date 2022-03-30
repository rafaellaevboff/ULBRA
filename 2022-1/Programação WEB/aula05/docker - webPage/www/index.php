<?php

//vai ser um arquivo de roteamento
//SEMPRE deixar ele dentro do www, sem estar em nenhuma pasta
if(!isset($_GET["controller"]))


if(isset($_GET["controller"])){

    if($_GET["controller"]=="site"){
        require_once("controllers/SiteController.php");
        $site = new SiteController();

        if($_GET["action"] == "home"){
            $site -> home();
        }elseif($_GET["action"]=="about"){
            $site -> about();
        }elseif($_GET["action"] == "products"){
            $site -> products();
        }elseif($_GET["action"] == "contact"){
            $site -> contact();
        }

    }elseif($_GET["controller"]=="client"){
        require_once("controllers/ClientController.php");
        $client = new ClientController();
        if($_GET["action"]=="insertClient"){
            $client -> insertClient();
        }elseif($_GET["action"]=="insertClientAction"){
            $client -> insertClientAction();
        }
    }

}else{
    require_once("controllers/SiteController.php");
    $site = new SiteController();
    $site -> home();
}

?>
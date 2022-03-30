<?php

//vai ser um arquivo de roteamento
//SEMPRE deixar ele dentro do www, sem estar em nenhuma pasta

require_once("views/controllers/SiteController.php");
$site = new SiteController();

    if(isset($_GET["page"])){

        if($_GET["page"] == "home"){
            $site -> home();
        }elseif($_GET["page"]=="about"){
            $site -> about();
        }elseif($_GET["page"] == "products"){
            $site -> products();
        }elseif($_GET["page"] == "contact"){
            $site -> contact();
        }

    }else{
        $site -> home();
    }  
?>
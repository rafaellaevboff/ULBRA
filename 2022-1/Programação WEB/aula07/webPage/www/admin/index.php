<?php

//vai ser um arquivo de roteamento
//SEMPRE deixar ele dentro do www, sem estar em nenhuma pasta

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if(!isset($_GET['controller'])){
    require_once('controllers/MainController.php');
    $Main = new MainController();
    $Main -> index();
}else{
    switch ($_REQUEST['controller']){
        case '':
            
            if(!isset($_GET['action'])){
                
            }else{
                switch($_REQUEST['action']){
                    case:

                    break;
                }
            }
        break;

?>
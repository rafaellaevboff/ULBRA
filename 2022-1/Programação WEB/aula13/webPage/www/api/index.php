<?php 
$request_method = $_SERVER["REQUEST_METHOD"];
$local = $_SERVER['SCRIPT_NAME'];
$uri = $_SERVER['PHP_SELF']; 
$rout = str_replace($local, "", $uri);
$uriSegments = explode("/", $rout);
//localhost:8001/api/index.php/client/1
//rout => index.php/client/1
// 0-> index.php
// 1-> client
// 2-> id

if(isset($uriSegments[1])){	
	switch($uriSegments[1]){
		case 'client':
			require_once("controllers/ClientController.php");
			$client = new ClientController();
			switch($request_method){
				case 'GET':
					if(!isset($uriSegments[2]))
						$client -> listClients();
					else
						echo $client -> listClient($uriSegments[2]);
				break;
				case 'POST':
					$client -> insertClient();
				break;
				case 'PUT':
                    if(isset($uriSegments[2]))
					    $client -> updateClient($uriSegments[2]);
				break;
				case 'DELETE':
                    if(isset($uriSegments[2]))
					    $client -> deleteClient($uriSegments[2]);
				break;
			}
		break;	
	}
}
?>
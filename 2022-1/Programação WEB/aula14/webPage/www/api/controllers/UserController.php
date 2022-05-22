<?php

class UserController{

    var $UserModel;

    function __construct(){
        require_once('models/UserModel.php');
        $this -> UserModel = new UserModel();
    }

    function login(){ //tem que receber um json
        $userData = json_decode(file_get_contents('php://input'));
        $userName = $userData -> user;
        $password = $userData -> password;
        // var_dump($userData);
        // var_dump($userName);
        // var_dump($password);

        $result = $this -> UserModel -> getUser($userName);//verificar se existe no BD
        if($user = $result -> fetch_assoc()){ //se o usuário está cadastrado
            if($user['password']==$password){ //verificar se a senha está certa
                //gerar um token para o usuário
                echo $this -> createJWT($user); //para chamar funções dessa classe usar o this
            }
            else{
                header('Content-Type: application/json');
                echo('{"message": "Senha incorreta"}');
            }
        }else{ //se o usuário não está cadastrado
            header('Content-Type: application/json');
            echo('{"message": "Usuário não existe incorreta"}');
        }
    }

    public function createJWT($user){
        $header = [
            'alg' => 'HS256',
            'typ' => 'JWT'
        ];
        $header = json_encode($header);
        $header = base64_encode($header);
        $header = str_replace(['+', '/', '='], ['-', '_', ''], $header); //base64url
        
        $payload = [
            'iss' => 'localhost',
            'name' => "{$user['name']}",
            'user' => "{$user['user']}",
            'adm' => "{$user['admin']}"
        ];
        $payload = json_encode($payload);
        $payload = base64_encode($payload);
        $payload = str_replace(['+', '/', '='], ['-', '_', ''], $payload); //base64url
        
        $signature = hash_hmac('sha256',"$header.$payload",'minha-senha',true);
        $signature = base64_encode($signature);
        $signature = str_replace(['+', '/', '='], ['-', '_', ''], $signature); //base64url
        
        
        $token = $header . "." . $payload . "." . $signature;
        
        return $token;
    }

    public function isAdmin(){
        $header = apache_request_headers();
        $token = $header['Authorization'];
        $token = str_replace("Bearer ", "", $token); //se tiver o prefixo "Bearer" remover

        if($this -> checkJWT($token)){
            $part = explode(".",$token);
            $payload = $part[1];
            $payload = base64_decode($payload);
            $payload = json_decode($payload);
            
            //var_dump($payload);

            if($payload-> adm == 1){
                return true;
            }else{
                header('Content-Type: application/json');
                echo('{"message": "Acesso negado!"}');
                return false;
            }
        }
    }

    public function checkJWT($token){
        $part = explode(".",$token);
        $header = $part[0];
        $payload = $part[1];
        $signature = $part[2];

        $valid = hash_hmac('sha256',"$header.$payload",'minha-senha',true);//se as infos forem diferentes das fornecidas no create não vai validar
        $valid = base64_encode($valid);
        $valid = str_replace(['+', '/', '='], ['-', '_', ''], $valid); //base64url

        if($signature == $valid){
            return true;
        }else{
            header('Content-Type: application/json');
            echo('{"message": "Token inválido!"}');
            return false;
        }
    }
}

?>
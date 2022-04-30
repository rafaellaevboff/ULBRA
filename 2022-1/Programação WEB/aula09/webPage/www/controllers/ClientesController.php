<?php

class ClientesController{
    function insertCadastro(){
        require_once('views/templates/header.php');
        require_once('views/cadastro/insertCadastro.php');
        require_once('views/templates/footer.php');

    }

    function showCadastro(){

        $cadastro = array(
            'nome' => $_POST['nome'],
            'email' => $_POST['email'],
            'telefone' => $_POST['telefone'],
            'contribuicao' => $_POST['contribuicao'],
            'semestre' => $_POST['semestre'],
            'turno' => $_POST['turno'],
            'estudante' => $_POST['estudante'],
            'linguagens' => $_POST['linguagens']
        );

        require_once('views/templates/header.php');
        require_once('views/cadastro/showCadastro.php');
        require_once('views/templates/footer.php');
    }

    
}

?>
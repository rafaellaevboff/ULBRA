<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <!--BOOTSTRAP v5-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <!--CSS-->
        <link rel="stylesheet" href="<?=base_url('assets/css/styleLogin.css')?>">
    </head>
<body>
    <div class="container-fluid" >
        <div class="row">
            <div class="col-md-4"></div>
                <div class="col-md-4 p-5">
                    <h1 class="text-center conteudo">Login no sistema</h1>
                        <form action="<?=base_url('admin/validate-login')?>" method=POST name="formulario" id="formulario">
                            <div>
                                <div class="form-group">
                                    <label >Login</label>
                                    <input type="text" class="form-control" name="userName" placeholder="Digite o usuário">                          
                                </div>
                                <div class="form-group mt-2">
                                    <label>Senha</label>
                                    <input type="password" class="form-control" name="userPassword" placeholder="Digite sua senha">
                                </div> 
                            </div>
                                <center>
                                    <input class="botao btn mt-3 mb-4" type="submit" name="Enviar" value="Fazer Login">
                                    <br>
                                    <a href="../index.php">Voltar para área inicial</a>    
                                </center>
                        </form>
                </div> 
            <div class="col-md-4"></div>   
        </div>
    </div>
</body>
</html>
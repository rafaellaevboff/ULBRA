<h1>Alterar Cliente</h1>
<form class="form" action="?controller=client&action=updateClientAction&id=<?=$client['idClient']?>" method="post" enctype='multipart/form-data'>
    <div class="mb-3 mt-3">
        <label class="form-label" for="">Nome</label>
        <input name="name" class="form-control" type="text" value="<?=$client['name']?>">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">E-mail</label>
        <input name="email" class="form-control" type="text" value="<?=$client['email']?>">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Telefone</label>
        <input name="phone" class="form-control" type="text" value="<?=$client['phone']?>">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Endereço</label>
        <input name="address" class="form-control" type="text" value="<?=$client['address']?>">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Imagem</label>
        <input name="photo" class="form-control" type="file">
    </div>

    <div>
    <?php
        if(is_file("assets/img/clients/{$client['idClient']}.jpg")){
            echo "
                <img
                    src='assets/img/clients/{$client['idClient']}.jpg'
                    style='max-width: 300px; max-heigth: 300px; margin-bottom: 15px'
                    alt='imagemCliente'
                >";
        }else{
            echo "Sem imagem!";
        }
    ?>
    </div>

    <a href="index.php" class="btn btn-danger">Cancelar</a>
    <input class="btn btn-success" type="submit" value="Enviar" value="">
    
</form>
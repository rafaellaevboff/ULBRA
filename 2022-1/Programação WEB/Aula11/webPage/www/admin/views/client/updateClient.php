<h1>Alterar Cliente</h1>
<form class="form" action="?controller=client&action=updateClientAction&id=<?=$client['idClient']?>" method="post">
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

    <input class="btn btn-dark" type="submit" value="Enviar" value="">
    
</form>
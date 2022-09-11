<h1>Alterar Cliente</h1>
<form class="form" action="<?=base_url("admin/client/updateAction/{$client['idClient']}")?>" method="POST">
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

    <a href="<?=base_url('admin/listClients')?>" class="btn btn-danger">Cancelar</a>
    <input class="btn btn-success" type="submit" value="Enviar" value="">
    
</form>
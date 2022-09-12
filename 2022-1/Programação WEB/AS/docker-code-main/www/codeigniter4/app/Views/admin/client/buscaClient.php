<h1>Pesquisar um cliente</h1>

<form  method="POST" action="<?=base_url("admin/client/buscaClientAction")?>">
    <div class="form-group">
        <div>
            <input type="text" class="form-control  m-2 p-2" name="busca" placeholder="Digite para pesquisar">
        </div>

        <button type="submit" class="btn btn-info m-2">Buscar</button>
    </div>
</form>
<h1>Inserir Cliente</h1>
<form class="form" action="?controller=client&action=insertClientAction" method="post" enctype='multipart/form-data'>
    <div class="mb-3 mt-3">
        <label class="form-label" for="">Nome</label>
        <input name="name" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">E-mail</label>
        <input name="email" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Telefone</label>
        <input name="phone" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Endereço</label>
        <input name="address" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Imagem</label>
        <input name="photo" class="form-control" type="file">
    </div>

    <input class="btn btn-dark" type="submit" value="Enviar">
    
</form>
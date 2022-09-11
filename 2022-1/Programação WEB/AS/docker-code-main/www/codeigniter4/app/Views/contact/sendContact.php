<h1>Contato</h1>
<form class="form" action="<?=base_url('/contactAction')?>" method="post">
    <div class="mb-3 mt-3">
        <label class="form-label" for="">Nome</label>
        <input name="name" class="form-control" type="text">
        <label class="form-label" for="">Email</label>
        <input name="email" class="form-control" type="text">
        <label class="form-label" for="">Mensagem</label>
        <textarea name="message" class="form-control" rows="5"></textarea>
    </div>
    <input class="btn btn-dark" type="submit" value="Enviar">
</form>
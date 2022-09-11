<h1>Detalhes do cliente</h1>

<table class="table">
    <tr>
        <th>ID do cliente</th>
        <td>
            <?=$client['idClient']?>
        </td>
    </tr>

    <tr>
        <th>Nome</th>
        <td>
            <?=$client['name']?>
        </td>
    </tr>

    <tr>
        <th>Email</th>
        <td>
            <?=$client['email']?>
        </td>
    </tr>

    <tr>
        <th>Telefone</th>
        <td>
            <?=$client['phone']?>
        </td>
    </tr>
    
    <tr>
        <th>Endereço</th>
        <td>
            <?=$client['address']?>
        </td>
    </tr>
</table>
<a href="<?=base_url('admin/listClients')?>" class="btn btn-danger">Voltar</a>
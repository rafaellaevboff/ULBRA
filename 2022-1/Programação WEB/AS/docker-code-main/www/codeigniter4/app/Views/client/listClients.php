<h1>Lista de Clientes</h1>

<table class="table table-striped">
    <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Email</th>
        <th>Ações</th>
    </tr>
    
    <?php
        foreach ($clients as $client) {
    ?>

    <tr>
            <td>
                <?=$client['name']?>
            </td>

            <td>
                <?=$client['phone']?>
            </td>

            <td>
                <?=$client['email']?>
            </td>

            <td>
                <a href="<?=base_url("client/{$client['idClient']}")?>">Detalhes</a> <!-- OBS: usar "" para o php interpretar que é uma template string-->
            </td>
    </tr>

    <?php
        }
    ?>
</table>
<h1>Dados do Cadastro</h1>

<table class="table table-striped">
    <tr>
        <th>
            Nome
        </th>
        <td> 
            <?= $cadastro['nome']?>
        </td>
    </tr>

    <tr>
        <th>
            E-mail
        </th>
        <td> 
            <?= $cadastro['email']?>
        </td>
    </tr>

    <tr>
        <th>
            Telefone
        </th>
        <td> 
            <?= $cadastro['telefone']?>
        </td>
    </tr>

    <tr>
        <th>
            Contribuição
        </th>
        <td> 
            <?= $cadastro['contribuicao']?>
        </td>
    </tr>

    <tr>
        <th>
            Semestre
        </th>
        <td> 
            <?= $cadastro['semestre']?>
        </td>
    </tr>

    <tr>
        <th>
            Tipo de estudante
        </th>
        <td> 
            <?= $cadastro['estudante']?>
        </td>
    </tr>

    <tr>
        <th>
            Linguagens que conhece
        </th>
        <td> 
            <?= $cadastro['linguagem']?>
        </td>
    </tr>
</table>
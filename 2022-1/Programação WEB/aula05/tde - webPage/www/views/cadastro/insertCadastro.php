<h1>CADASTRO</h1>
<form class="form" action="?controller=cadastro&action=showCadastro" method="post">
    <div class="mb-3 mt-3">
        <label class="form-label" for="">Nome</label>
        <input name="nome" class="form-control" type="text">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">E-mail</label>
        <input name="email" class="form-control" type="email">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Senha</label>
        <input name="senha" class="form-control" type="password">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Telefone</label>
        <input name="telefone" class="form-control" type="tel">
    </div>

    <div class="mb-3 mt-3">
        <label class="form-label" for="">Quer dar sua contribuição para o site? Digite abaixo:</label>
        <textarea name="contribuicao" class="form-control" type="text"></textarea>
    </div>

    <div>
        <label for="semestre">Escolha em qual semestre você está</label>
        <select name="semestre" id="semestre">
            <option value="primeiro">Primeiro</option>
            <option value="segundo">Segundo</option>
            <option value="terceiro">Terceiro</option>
            <option value="quarto">Quarto</option>
            <option value="quinto">Quinto</option>
            <option value="sexto">Sexto</option>
        </select>
    </div>

    <div class="mt-4">
        <label for="">Qual turno você estuda?</label><br>
        <select size="3" name="turno" class="m-2">
            <option value="matutino">Manhã</option>
            <option value="vespertino">Tarde</option>
            <option value="noturno">Noite</option>
        </select>
    </div>

    <div class="mt-3">
        <label class="form-label" for="tipoEst">Escolha abaixo o que corresponde com você:</label> <br>
        <input type="radio" id="calouro" name="estudante" value="calouro">
        <label for="calouro">Calouro(a)</label><br>
        <input type="radio" id="veterano" name="estudante" value="veterano">
        <label for="veterano">Veterano(a)</label><br>
    </div>

    <div class="my-3">
        <label class="form-label" for="">Qual(is) linguagem(s) de programação você conhece?</label> <br>
        <input type="checkbox" name="linguagens" value="php">
        <label for="php">PHP</label><br>
        <input type="checkbox" name="linguagens" value="csh">
        <label for="csh">C#</label><br>
        <input type="checkbox" name="linguagens" value="other">
        <label for="other">Outra(s)</label>
    </div>

    <input class="btn btn-dark" type="submit" value="Enviar">
    
</form>
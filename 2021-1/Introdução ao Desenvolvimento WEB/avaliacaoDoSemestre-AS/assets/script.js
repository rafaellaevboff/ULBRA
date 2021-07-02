function cadastroCliente(){
    var nome = document.getElementById("nome").value
    var email = document.getElementById("email")
    var assunto = document.getElementById("assunto")
    var mensagem = document.getElementById("mensagem")

    alert("Recebemos sua mensagem! Obrigado por acessar nosso site " + nome + "!")
}

function atendimento(){
    document.getElementById("horarioAtendimento").innerHTML = ("Atendemos de segunda a sexta.<br>Das 08:00h as 12:00h e das 13:00h as 17:00h.")
}

function secaoRoupas(){
    var secao = document.getElementById("secao").value
    document.getElementById("secaoDesejada").innerHTML = ("Você deseja ver a seção " + secao + ".")
}
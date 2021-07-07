function cadastroCliente(){
    var nome = document.getElementById("nome").value;
    var email = document.getElementById("email").value;
    var assunto = document.getElementById("assunto").value;
    var mensagem = document.getElementById("mensagem").value;

    if(nome == ""){
        return false;
    }else if(email == "" || email.indexOf("@") == -1){
        return false;
    }else if(assunto == ""){
        return false;
    }else if(mensagem == ""){
        return false;
    }else{
        alert("Recebemos sua mensagem! Obrigado por acessar nosso site " + nome + "!");
    }
}

function secaoRoupas(){
    var secao = document.getElementById("secao").value;
    if(secao == ""){
        alert("Você deve preencher o campo seção.");
        return false;
    }else if(secao == "feminina" || secao == "Feminina" || secao == "masculina" || secao == "Masculina" || secao =="infantil" || secao == "Infantil"){
        document.getElementById("secaoDesejada").innerHTML = ("Você deseja ver a seção " + secao + ".");
    }else{
        alert("Você deve digitar uma opção válida.");
        return false;
    }
}

function sobreLoja(){
    document.getElementById("horarioAtendimentoSobreLoja").innerHTML = ("Vendemos vários tipos de roupas.<br>Não trabalhamos com produtos de cama, mesa e banho.");
}

function atendimento(){
    document.getElementById("horarioAtendimentoSobreLoja").innerHTML = ("Atendemos de segunda a sexta.<br>Das 08:00h as 12:00h e das 13:00h as 17:00h.");
}
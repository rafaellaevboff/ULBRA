function calcularImc(){

    var peso = parseFloat(document.getElementById('peso').value);

    var altura = parseFloat(document.getElementById('altura').value);

    var imc = (peso / (altura*altura));

        if(imc<18.5){
            document.getElementById('tabelaIMC').innerHTML = ("Abaixo do peso ideal.")
        }
        if((18 <= imc && imc < 25)){
            document.getElementById('tabelaIMC').innerHTML = ("No peso ideal.")
        }
        if((30 < imc && imc <= 25)){
            document.getElementById('tabelaIMC').innerHTML = ("Acima do peso ideal.")
        }
        if(imc > 30){
            document.getElementById('tabelaIMC').innerHTML = ("Obeso.")
        }

    document.getElementById('resposta').innerHTML = ("Seu IMC é " + imc);
}
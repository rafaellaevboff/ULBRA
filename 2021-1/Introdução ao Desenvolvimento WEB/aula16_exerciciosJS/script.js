//Leia um valor e imprima os resultados: “É maior que 10” ou “Não é maior que 10” ou ainda “É igual a 10”
var numero = prompt("Digite um número:");

if(numero > 10){
    alert("É maior que 10.")
}
else if(numero == 10){
    alert("É igual a 10.")
}
else{
    alert("Não é maior que dez.")
}



//Some dois valores lidos e imprima o resultado
primNum = prompt('Digite um numero:');
primNum = parseInt(primNum);
segNum = prompt('Digite outro número:');
segNum = parseInt(segNum);

somaNumeros = primNum + segNum

alert(primNum + '+' + segNum + ' = ' + somaNumeros)



//Leia 2 valores e a operação a ser realizada (+, -, * ou /) e imprima o resultado (use um switch)
var num1 = prompt("Digite um número: ");
num1 = parseInt(num1);

var operacao = prompt("Digite qual operação deseja fazer(+, -, * ou /): ");

var num2 = prompt("Digite outro número: ");
num2 = parseInt(num2);

switch(operacao){
    case "+":
        soma = num1 + num2
        alert(num1 + "+" + num2 + " = " + soma);
    break
    case "-":
        subt = num1 - num2
        alert(num1 + "-" + num2 + " = " + subt);
    break
    case "*":
        mult = num1 * num2
        alert(num1 + "*" + num2 + " = " + mult);
    break
    case "/":
        divisao = num1 / num2
        alert(num1 + "/" + num2 + " = " + divisao);
    break
    default:
        alert("Está opção não está disponível.");
}



//Leia um nome e um valor n e imprima o nome n vezes usando o laço for
var nome = prompt('Digite um nome:');
var num = prompt('Digite o número de vezes que quer que o nome apareça:');
num = parseInt(num);

for(var i = 0; i < num; i++){
    alert(nome)
}



//Leia um nome, endereço e e-mail, armazene em um array, depois imprima na tela;
var nome1 = prompt('Digite um nome:');
var endereco1 = prompt('Digite o endereço:');
var email1 = prompt('Digite o e-mail:');
var dados = [nome1, endereco1, email1];

alert('O nome digitado foi ' + dados[0] + '. O endereço digitado foi ' + dados[1] + '. O e-mail digitado foi ' + dados[2]);



//Faça o mesmo procedimento com um objeto
var dados = new Object();
dados.nome2 = prompt('Digite um nome:');
dados.endereco2 = prompt('Digite o endereço:');
dados.email2 = prompt('Digite o e-mail:');

alert('Nome digitado: ' + dados.nome2 + '. Endereço digitado: ' + dados.endereco2 + '. E-mail digitado: ' + dados.email2);

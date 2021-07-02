/*Deseja-se calcular a conta de consumo de energia elétrica de uma casa. Para isso, elabore um formulário em HTML que leia a quantidade de Kwh consumidos e o valor unitário do Kwh.  
Escreva uma função em JavaScript que faça o cálculo (valor quantidade x valor unitário) e, caso a quantidade de Kwh ultrapasse 100, o valor do Kwh deve ser acrescido em 25%. Caso ultrapasse 200, o mesmo valor deve ser acrescido em 50%.
*/  
function calcular(){
var valor = parseFloat(document.getElementById('valor').value);

var quantidade = parseFloat(document.getElementById('quantidadeKwh').value);

if(quantidade > 100){
    var calculo = (valor * quantidade)*1.25
}
if(quantidade > 200){
    var calculo = (valor * quantidade)*1.50
}
else{
    var calculo = valor * quantidade
}

document.getElementById('tela').innerHTML = ("O valor a pagar é: R$" + calculo);
}
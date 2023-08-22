//Exercício 1 - Crie uma função javascript que execute a soma de 2 números e coloque o resultado no console utilizando o console.log().
function soma(valor1, valor2){
    let soma = valor1+valor2
    console.log(`${valor1} + ${valor2} = ${soma}`);
}
soma(5,6)

//Exercício 2 - Crie uma função javascript que receba uma lista inteiros como parâmetro e diga qual número é par e qual é ímpar.
function parOuImpar(listaNums){
    listaNums.forEach(element => {
        if(element % 2 == 0){
            console.log(`${element} é par`);
        }else{
            console.log(`${element} é impar`);
        }
    });
}
parOuImpar([3,5,8,4,6,7])
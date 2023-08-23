function calcularSaidaNEntradas(entradas, peso){
        let soma = 0;
    for (let i = 0; i < entradas.length; i++) {
        soma += entradas[i] * peso;
    }

    return soma;
}

function calcularLR(soma) {
    if(soma < 0 || soma == 0){
        return -1
    }else{
        return 1
    }
}

function calcularFR(soma) {
    if(soma < 0){
        return 0
    }else if(soma == 0 || soma < 0 && soma == 1 || soma < 1){
        return soma
    }else{
        return 1
    }
}

function calcularFS(soma) {
    if(soma == 0 || soma > 0){
        return 1 - (1/(1 + soma))
    }else{
        return -1 + (1/(1 - soma))
    }
}

const entradas = [1, 2];
const peso = -1;

console.log(calcularSaidaNEntradas(entradas, peso));
console.log(calcularLR(calcularSaidaNEntradas(entradas, peso)));
console.log(calcularFR(calcularSaidaNEntradas(entradas, peso)));
console.log(calcularFS(calcularSaidaNEntradas(entradas, peso)));

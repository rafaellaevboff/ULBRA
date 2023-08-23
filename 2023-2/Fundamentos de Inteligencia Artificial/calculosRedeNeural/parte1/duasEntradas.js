function calcularLR(entrada1, peso1, entrada2, peso2){
    let soma = calcularSaidaDuasEntradas(entrada1, peso1, entrada2, peso2)
    if(soma < 0 || soma == 0){
        return -1
    }else{
        return 1
    }
}

function calcularFR(entrada1, peso1, entrada2, peso2){
    let soma = calcularSaidaDuasEntradas(entrada1, peso1, entrada2, peso2)
    if(soma < 0){
        return 0
    }else if(soma == 0 || soma < 0 && soma == 1 || soma < 1){
        return soma
    }else{
        return 1
    }
}

function calcularFS(entrada1, peso1, entrada2, peso2){
    let soma = calcularSaidaDuasEntradas(entrada1, peso1, entrada2, peso2)
    if(soma == 0 || soma > 0){
        return 1 - (1/(1 + soma))
    }else{
        return -1 + (1/(1 - soma))
    }
}

function calcularSaidaDuasEntradas(entrada1, peso1, entrada2, peso2){
    return (entrada1 * peso1) + (entrada2 + peso2)
}




console.log(calcularSaidaDuasEntradas(1, 1, 2, -1))
console.log(calcularLR(1, 1, 2, -1))
console.log(calcularFR(1, 1, 2, -1))
console.log(calcularFS(1, 1, 2, -1))
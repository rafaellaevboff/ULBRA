function calcularLR(entrada1, peso1, peso2){
    let soma = calcularSaida(entrada1, peso1)
    let primeiroNeuronio
    if(soma<0 || soma == 0) 
        primeiroNeuronio = -1
    else 
        primeiroNeuronio = 1
    
    let segundoNeuronio = calcularSaida(primeiroNeuronio, peso2)
    if(segundoNeuronio < 0 || segundoNeuronio == 0) 
        return -1
    else 
        return 1
}

function calcularFR(entrada1, peso1, peso2){
    let soma = calcularSaida(entrada1, peso1)
    let primeiroNeuronio
    if(soma < 0) 
        primeiroNeuronio = 0
    else if(soma == 0 || soma < 0 && soma == 1 || soma < 1)
        primeiroNeuronio = soma
    else
        primeiroNeuronio = 1
    
    let segundoNeuronio = calcularSaida(primeiroNeuronio, peso2)
    if(segundoNeuronio < 0) 
        return 0
    else if(segundoNeuronio == 0 || segundoNeuronio < 0 && segundoNeuronio == 1 || segundoNeuronio < 1)
        return segundoNeuronio
    else
        return  1
}

function calcularFS(entrada1, peso1, peso2){
    let soma = calcularSaida(entrada1, peso1)
    let primeiroNeuronio
    if(soma == 0 || soma > 0){
        primeiroNeuronio = 1 - (1/(1 + soma))
    }else{
        primeiroNeuronio = -1 + (1/(1 - soma))
    }

    let segundoNeuronio = calcularSaida(primeiroNeuronio, peso2)
    if(segundoNeuronio == 0 || segundoNeuronio > 0){
        return 1 - (1/(1 + segundoNeuronio))
    }else{
        return -1 + (1/(1 - segundoNeuronio))
    }
}

function calcularSaida(entrada, peso){
    return entrada * peso
}

console.log(calcularSaida(1, 1, 2, -1))
console.log(calcularLR(1, 1, 2))
console.log(calcularFR(1, 1, 2))
console.log(calcularFS(1, 1, 2))

console.log(calcularSaida(1, 1, 2))
console.log(calcularLR(1, 1, -2))
console.log(calcularFR(1, 1, -2))
console.log(calcularFS(1, 1, -2))

console.log(calcularSaida(1, 2, 2))
console.log(calcularLR(1, 2, 2))
console.log(calcularFR(1, 2, 2))
console.log(calcularFS(1, 2, 2))
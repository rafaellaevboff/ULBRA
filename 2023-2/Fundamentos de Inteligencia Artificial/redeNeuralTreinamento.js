// Pesos iniciais
let w1 = -1;
let w2 = -1;

//yd = saída desejada
//yo = saída obtida

const numTreinamento = 10;

function calcularSaidaDuasEntradas(entrada1, peso1, entrada2, peso2){
    return (entrada1 * peso1) + (entrada2 * peso2)
}

function calcularFRampa(soma){
    if(soma <= 0){
        return 0
    }else{
        return 1
    }
}

function ajuste(x1, x2, yd, yo) {
    w1 = w1 + 1 * (yd-yo)*x1;
    w2 = w2 + 1 * (yd-yo)*x2;
}


function prever(x1, x2){
    const soma = calcularSaidaDuasEntradas(x1, w1, x2, w2)
    const resRampa = calcularFRampa(soma)
    return resRampa
}

// Dados de treinamento
const dadosDeTreinamento = [
    { entrada: [1, 1], saidaDesejada: 1 },
    { entrada: [1, 0], saidaDesejada: 1 },
    { entrada: [0, 1], saidaDesejada: 0 },
    { entrada: [0, 0], saidaDesejada: 0 }
];

function treinarRede(){
    var i=0
    var redeTreinada = false
    while (redeTreinada == false){
        redeTreinada = true
        exemplo = dadosDeTreinamento[i]
        const entrada1 = exemplo.entrada[0]
        const entrada2 = exemplo.entrada[1]
        const saidaDesejada = exemplo.saidaDesejada

        const saidaObtida = prever(entrada1, entrada2)
        if(saidaObtida != saidaDesejada){
            console.log(`Entrada: [${entrada1}, ${entrada2}] - Saída da rede: ${saidaObtida}`)
            ajuste(entrada1, entrada2, saidaDesejada, saidaObtida)
            redeTreinada = false
        }

        i++

        if(i>3){
            i = 0
        }
    }
}

treinarRede()
console.log("Resultado após o treinamento:");
for (const exemplo of dadosDeTreinamento) {
    const x1 = exemplo.entrada[0];
    const x2 = exemplo.entrada[1];
    const yo = prever(x1, x2);
    console.log(`Entrada: [${x1}, ${x2}] - Saída da rede: ${yo}`); //printar pesos
}
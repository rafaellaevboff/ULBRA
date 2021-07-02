function botao(){
    var sequencia = document.getElementById('sequencia').value;
    sequencia = sequencia.split(",");


    var maiorNum = Math.max.apply(null, sequencia );

    // var maiorNum
    // if(sequencia > sequencia){
    //     maiorNum = sequencia
    // }

    document.getElementById('tela').innerHTML = ("O maior número digitado é: " + maiorNum);
}
/*O usuário vai digitar várias idades (pode ser separado por vírgula também). Mostre na tela quantas idades são menores que 18 e quantas são maiores que 18. */

function mostrarResultado(){
    var idades = document.getElementById('idades').value;
    idades = idades.split(",");

    var i, maiores = 0, menores =0 , igual = 0;
    for(i = 0; i < idades.length; i++){
        if(idades[i] < 18){
            menores++
        }
        else if(idades[i] > 18){
            maiores++
        }
        else{
            igual++
        }
    }

    document.getElementById('result').innerHTML =
    'Menores que 18: ' + menores + '<br>' +
    'Iguais a 18: ' + igual + '<br>' +
    'Maiores que 18: ' + maiores + '<br>'
}
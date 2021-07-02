function calcular(){
    var num1 = parseFloat(document.getElementById("num1").value);

    var sinal = document.getElementById("sinal").value;

    var num2 = parseFloat(document.getElementById("num2").value);

    var result = document.getElementById("result");

    switch(sinal){
    case('+'):
        result = num1 + num2
            break;
    case('-'):
        result = num1 - num2
            break;
    case('*'):
        result = num1 * num2
            break;
    case('/'):
        result = num1 / num2
            break;
    }
    
    document.getElementById("result").innerHTML = ("<h4>O resultado da operação é: <h4>" + result)
    
    // console.log(num1);
    // console.log(result);
    // console.log(num2);
    //console.log(result);
}
$(document).ready(function(){

    //$("h1").click(function(){

    //})

    $("#consultar").click(function(){
        var cep = $("#cep").val();
        
        var url = "https://viacep.com.br/ws/" + cep + "/json/";

        $.get(url, function(data){
            $("#resultado").html(
                "Localidade: " + data.localidade + "<br>" +
                "Referência do IBGE: " + data.ibge
                );
        })

        //$("#titulo1").html("Mudei o título")
        //alert("Oi")
        //id usar no JS e o class no CSS
    })

})

//function funcaoDoBotao(){
    //document.getElementById("titulo1").innerHTML = "Mudei o título."
//}

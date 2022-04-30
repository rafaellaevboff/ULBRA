$(document).ready(function(){
    $("#show").click(function(){
        $("#text").show();
    });

    $("#hide").click(function(){
        $("#text").hide();
    })
    
    $("#about").click(function(){
        $("article").load('about.html')
    })
})
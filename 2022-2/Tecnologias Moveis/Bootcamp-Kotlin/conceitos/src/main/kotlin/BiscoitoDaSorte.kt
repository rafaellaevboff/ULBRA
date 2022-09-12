import java.util.*

fun main(){
    for(num in 1..10){
        print("A mensagem da sorte é: ")
        getFortuneCookie()
    }
}

fun getFortuneCookie() {
    val frases = listOf("Você terá um ótimo dia!","As coisas vão correr bem para você hoje.","Desfrute de um dia maravilhoso de sucesso","Seja humilde e tudo acabará bem.","Hoje é um bom dia para exercitar a contenção.","Acalme-se e aproveite a vida!","Valorize seus amigos porque eles são sua maior fortuna.")

//    print("Digite o dia do seu nascimento: ")
//    var birthday = readLine()?.toIntOrNull() ?: 1
    println(frases[Random().nextInt(frases.size)])
}
import java.util.*

fun main(args: Array<String>){
    println("Hello, ${args[0]}!") //em Run, adicionei em Program Arguments "Kotlin", por isso aparece
    dayOfWeek()
    temperature()
}

fun dayOfWeek(){
    println("Que dia é hoje?")
    when(Calendar.getInstance().get(Calendar.DAY_OF_WEEK)){
        1 -> println("Hoje é domingo!")
        2 -> println("Hoje é segunda")
        3 -> println("Hoje é terça")
        4 -> println("Hoje é quarta")
        5 -> println("Hoje é quinta")
        6 -> println("Hoje é sexta")
        7 -> println("Hoje é sábado")
    }
}

fun temperature(){
    val temp = 10
    val tempAmanha = 30
    val isHot = if (temp > 25) "Sim" else "Não" //true else false
    println("Hoje está calor? $isHot")

    val message = "Amanhã estará ${if(tempAmanha > 25) "calor" else "frio"}!"
    println(message)
}


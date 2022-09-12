import java.util.*

fun main(){
    feedTheFish()
}

fun feedTheFish(){
    val day = randomDay()
    val food = fishFood(day)
    println("Hoje é $day e o peixe comerá $food")
}

fun randomDay() : String {
    val week = listOf("Domingo","Segunda-feira","Terça-feira","Quarta-feira","Quinta-feira","Sexta-feira","Sábado")
    return week[Random().nextInt(7)]
}

fun fishFood(day : String) : String {
    //var food = "comida"
    return when (day) {
        "Domingo" -> "sementes"
        "Segunda-feira" -> "algas"
        "Quarta-feira" -> "ração"
        "Quinta-feira" -> "arroz"
        "Sexta-feira" -> "farelo"
        else -> "alface"
    }
    //return food
}
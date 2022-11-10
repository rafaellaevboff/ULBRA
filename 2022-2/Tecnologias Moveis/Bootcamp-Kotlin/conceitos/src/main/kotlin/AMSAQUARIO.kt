import java.util.*

fun main(){
    feedTheFish()
    swim(1)
    swim(1,"slow")
    swim(1, speed = "slow")
    shouldChangeWater(dirty = 20)
}

fun shouldChangeWater(
    day :String = "segunda",
    temperature: Int = 22,
    dirty: Int = 20,
){}

fun canAddFish(tankSize: Double, currentFish: List<Int>, fishSize: Int = 2, hasDecorations: Boolean = true): Boolean {
    return (tankSize * if (hasDecorations) 0.8 else 1.0) >= (currentFish.sum() + fishSize)
}

fun swim(time: Int, speed: String = "fast"){
    print("swimming $speed")
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
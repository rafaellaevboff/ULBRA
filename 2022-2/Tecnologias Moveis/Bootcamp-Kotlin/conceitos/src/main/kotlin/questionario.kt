class questionario {
    fun main(){
        whatShouldIDoToday("happy")
    }

    fun whatShouldIDoToday(mood: String, weather: String = "ensolarado", temperature: Int = 24){
        when(mood && weather) {
            "happy" && "Sunny" -> println("go for a walk")
            else -> "Stay home and read."){
        }
    }

}
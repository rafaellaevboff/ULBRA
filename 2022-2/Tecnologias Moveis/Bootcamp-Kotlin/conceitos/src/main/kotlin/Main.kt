fun main(args: Array<String>) {
    println("Hello World!")

    // Try adding program arguments via Run/Debug configuration.
    // Learn more about running applications: https://www.jetbrains.com/help/idea/running-applications.html.
    println("Program arguments: ${args.joinToString()}")

    var rainbowColor : String? = "verde"
    val blackColor : String = "preto"
    println("rainbowColor: " + rainbowColor)
    println("blackColor: " + blackColor)
    rainbowColor = "amarelo"
    //blackColor = "branco"
    println("rainbowColor: " + rainbowColor)
    println("blackColor: " + blackColor)

    var greenColor : String? = "verde"
    var blueColor : String?

    var list : List<String?>? = listOf(null, null)

    var nullTest : Int? = null
    val testeDeNulo = nullTest?.inc() ?: 0  //usando ELVIS
    println(testeDeNulo)

    var trout : String = "truta"
    var haddocke : String? = "peixe cinza"
    var snapper : String = "caranga"
    println("Eu não gosto dos peixes $trout, $haddocke e $snapper")

    var fishName : String = "Espada"
    when(fishName.length){
        0 -> println("erro")
        in 3..12 -> println("Bom nome de peixe")
        else -> println("OK nome de peixe")
    }

    var numbers = arrayOf(11,12,13,14,15)
    val str = ArrayList<String>()
    for((index, element) in numbers.withIndex()){
        str.add(element.toString())
    }
    println(str)

    var nums = ArrayList<Int>()
    for(num in 1..100){
        if((num % 7) == 0){
            nums.add(num)
        }
    }
    println(nums)
}
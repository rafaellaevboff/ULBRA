fun main() {
//    LINHAS COMENTADAS: coments ou pq não irá compilar
    println("Hello World!")

    val nome = "Kotlin"
    val nomeMaiusculo = nome.uppercase()
    //nomeMaiusculo.inc()
    println(nomeMaiusculo)

//    variável com valor e nula:
    val name1: String = "Rafaella"
    //val segundoNome: String = null
    val sobreNome: String ?= null
//    pra dar o valor null para uma variavel colocar o ?
    //val lenSobre = sobreNome.length
    val lenNome = name1.length
    val lenNomeS = sobreNome?.length ?: -1
    println("$lenNome - $lenNomeS")

//    OPERADOR ELVIS ?: ->  é usado quando vai receber um valor nulo de uma função ou variável
    val name2: String? = null
    val elvis = name2 ?: "Rafa"
    println(elvis)

//    OPERADOR FORCE -> trata as informações que não podem ser nulas, assim ele exige que as informações passadas com ele não sejam nulas.
    operadorForce()

//    CONDICIONAIS
    var count = 24
    if( count == 1){
        println("Contador igual a 22")
    } else if(count > 33){
        println("Contador maior que 33")
    } else {
        println("Contador menor que 33")
    }

    val resp = if(count == 1){
        "contador igual a 22"
        }else if(count > 30){
            "Contador maior que 33"
        }else{
            "Contador menor que 33"
        }

    val resp2 = when {
            count == 1 -> "Contador igual a 22"
            count > 33 -> "Contador maior que 33"
            else -> "Contado menor que 33"
        }
    print(resp2)

//    ESTRUTURAS DE REETIÇÃO
    var b = 22
    while(b > 0){
        b--
    }

    do{
        val y = funcao()
    }while(y != null)//Y é acessível aq

    for(i in 1..3){
        println(i)
    }

    for(i in 6 downTo 0 step 2) { //um laço de 6 a 0, decrementando em 2
        println(i)
    }

    val array = arrayOf("a", "b", "c")
    for(i in array.indices){ //percorre o array, mostrando cada valor
        println(array[i])
    }
    for((index, value) in array.withIndex()){ //percorre o array, mostrando os índices e os valores do Array
        println("O elemento na posição $index é $value")
    }

    //CLASSE
    classePokemon()

}

 fun operadorForce(){
     val name3: String ?= "Rafaella"
     try{
         println(getSize(name3!!)) //<----
     }catch(e: Exception){
         println("OPA" + e.message)
     }
 }

//  FUNÇÕES:
fun getSize(str: String): Int{
    return str.length
}

fun funcao(){
    println("Função")
}

//  CLASSES
class Pokemon(val nome:String, val peso:Int, val familia:String){//<-- Construtor primário e propriedades
    //bloco de inicialização:
    init{
        require(nome.trim().length>0){
            "informe um nome"
        }
        require(familia.trim().length>0){
            "informe uma familia"
        }
    }

    //construtor secundário:
    constructor(nome: String, familia:String): this(nome, 10, familia)

    //função toString
    override fun toString(): String {
        return "Pokemon(nome='$nome', peso=$peso, familia=$familia"
    }
    //função ataque
    fun ataque(): String{
        val atk = if (this.familia.equals("Elétrico")){
          "Raio do Trovão"
        }else{
            "outro ataque"
        }
        return atk
    }
}//fim da classe

fun classePokemon(){
    //instancia com construtor primário:
    var pokemon1 = Pokemon("Pikachu", 1, "Elétrico")
    //instancia com construtor secundário:
    var pokemon2 = Pokemon("Bulbasaur", "Planta/Venenoso")

    println(pokemon1.toString())
    println(pokemon2.toString())
    println(pokemon1.ataque())
}
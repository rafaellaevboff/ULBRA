open class SmartDevice(val name: String, val category: String) {
    var status = "online"

    constructor(name: String, category: String, statusCode:Int):this(name, category){
        status=when(statusCode){
            0->"offline"
            1->"online"
            else-> "desconhecido"
        }
    }

    open fun turnOn(){
        println("Dispositivo ligado")
    }

    fun turnOff(){
        println("Dispositivo desligado")
    }

}

class SmartTVDevice(val deviceName: String, val deviceCategory: String) : SmartDevice(name = deviceName, category = deviceCategory){
    var speakerVolume = 0
        get() = field
        set(value) {
            if(value in 0..100) {
                field = value
            }
        }

    var channel = 0
        get() = field
        set(value) {
            if(value in 0..100) {
                field = value
            }
        }
}

class SmartLightDevice(val deviceName: String, val deviceCategory: String) : SmartDevice(name = deviceName, category = deviceCategory){
    var brightnessLevel = 5
        get() = field
        set(value) {
            if(value in 0..10) {
                field = value
            }
        }

    override fun turnOn(){
        super.turnOn()
        brightnessLevel=10
        println("Aumentar o brilho")
    }
}

class SmartHome(val SmartLightDevice : SmartLightDevice){

}

fun main(){
    val smartTvDevice = SmartDevice("IPTV", "televisão",1)
    val myBand = SmartDevice("Smartphone", "celular", 0)
    val tv = SmartTVDevice("ANDROID TV", "televisão")


    println("Device Nome: ${myBand.name} - ${myBand.status}")
    myBand.turnOn()
    myBand.turnOff()

    tv.speakerVolume=10
    tv.turnOn()

    println("Device name: ${tv.name} - Device category: ${tv.category} - SpeakerVolume: ${tv.speakerVolume} - Canal: ${tv.channel}")

    val lamp = SmartLightDevice("lamp1", "lampada")
    lamp.turnOn()
}
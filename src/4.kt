//fun main() {
//    println("Byte comparision ${maxOf(4.toByte(), 5.toByte(),3.toByte())}")
//}
fun main() {
    val a = 4
    val b = 5
    val c = 3

    val max = if (a > b) {
        if (a > c)
            a
        else
            c
    } else {
        if (b > c)
            b
        else
            c
    }
    println("max = $max")
}
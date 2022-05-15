fun main() {
    val num = 8
    var factor: Long = 1
    for (i in 1..num) {

        factor *= i.toLong()
    }
    println("Factor $num = $factor")
}

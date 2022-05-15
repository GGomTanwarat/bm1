fun main() {
    var f = 1
    val s = 5
    var t = 1
    var g = 2

    println("number $s ")
    print("round : ")
    while (f <= s) {
        print("$t + ")

        val sum = t + g
        t = g
        g = sum
        f++
    }
}


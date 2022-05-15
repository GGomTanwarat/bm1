fun main() {
    var money = 2000

    if (money % 100 == 0 && money != 0)
        println("$money bath")
    if (money >= 1000) {
        var why = money / 1000
        println("แบงค์ 1000 $why ใบ")
        money = money - why * 1000

    }
    if (money >= 500) {
        var why = money / 500
        println("แบงค์ 500 $why ใบ")
        money = money - why * 500
    }
    if (money >= 100) {
        var why = money / 100
        println("แบงค์ 100 $why ใบ")
        money = money - why * 100
    }

}
//}else{
//    print("Please enter your money more than 100 Baht")
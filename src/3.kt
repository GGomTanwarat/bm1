//if(salary > 50000)
//        {
//           tax =  salary * 10/100;
//        }
//        else if(salary > 35000)
//        {
//             tax =  salary * 5/100;
//        }
//        else
//        {
//            tax =  0;
//        }
fun main() {
    val salaray = 24000
    val cul: Int
    if (salaray < 15000) {
        cul = salaray / 100 * 5
    } else if (salaray > 15000) {
        cul = salaray / 100 * 10
    }
else{
        cul = 0
    }
    println("$cul")
}



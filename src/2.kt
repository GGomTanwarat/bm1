fun main() {
    val point = 45
    val grade: String

    grade = if(point >= 101)
        "A"
    else if(point >= 85)
        "B+"
    else if(point >= 80)
        "B"
    else if(point >= 75)
        "C+"
    else if(point >= 70)
        "C"
    else if(point >= 65)
        "D+"
    else if(point >=55)
        "D"
    else
        "F"
    println("Your grade is: $grade")

}
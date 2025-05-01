// Функция для переворота числа
fun reverseNumber(num: Int): Int {
    var current = num
    var reversed = 0
    while (current != 0) {
        reversed = reversed * 10 + current % 10
        current /= 10
    }
    return reversed
}

fun main() {
    // Читаем количество чисел
    val n = readLine()?.toIntOrNull() ?: run {
        println("Ошибка: требуется целое положительное число для количества элементов")
        return
    }

    // Проверяем корректность n
    if (n <= 0) {
        println("Количество элементов должно быть положительным")
        return
    }

    // Обрабатываем n чисел
    repeat(n) {
        val num = readLine()?.toIntOrNull() ?: run {
            println("Ошибка: требуется целое положительное число")
            return
        }

        if (num <= 0) {
            println("Числа должны быть положительным")
            return
        }

        println(reverseNumber(num))
    }
}

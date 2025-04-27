fun main() {
    print("Введите количество элементов массива: ")
    val size = readLine()!!.toInt()

    // Проверка на корректность ввода
    if (size <= 0) {
        println("Количество элементов должно быть положительным")
        return // Завершаем с ошибкой
    }

    // Создание массива размера size
    val nums = IntArray(size)
    println("Введите элементы массива:")

    // Ввод элементов
    for (j in 0 until size) {
        val num = readLine()!!.toInt()
        // Проверка каждого элемента
        if (num <= 0) {
            println("Элементы должны быть положительными и целыми")
            return // Завершаем программу с ошибкой
        } else {
            nums[j] = num
        }
    }

    // Обработка и вывод чисел
    for (i in 0 until size) {
        if (nums[i] < 10) {
            continue // Пропускаем числа меньше 10
        }
        var rez = 0
        var originalNum = nums[i] // Сохраняем оригинальное число
        while (originalNum > 0) {
            rez = rez * 10 + originalNum % 10
            originalNum /= 10
        }
        // Удаляем ведущие нули (если есть)
        print("$rez ")
    }

    println()
}

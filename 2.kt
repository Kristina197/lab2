fun main() {
    var num: Int
    var count = 0
    var size: Int
    
    print("Введите количество элементов массива: ")
    size = readLine()!!.toInt()

    // Проверка на корректность ввода
    if (size <= 0) {
        println("Количество элементов должно быть положительным и целым")
        return // Завершаем программу с ошибкой если число не положительное или нецелое
    }
    else {
        val nums = IntArray(size) // Создаем массив размера size
        println("Введите элементы массива:")
        for (j in 0 until size) {
            num = readLine()!!.toInt()
            if (num <= 0 || num % 1 != 0) { //Проверка каждого элемента
                println("Элементы должны быть положительными и целыми")
                return // Завершаем с ошибкой
            }
            else {
                nums[j] = num //Сохраняем значения в массив
            }
        }

        for (i in 0 until size) {
            if (nums[i].toString().length % 2 == 1) {
                count++
            }
        }
        println("Количество чисел с нечетным количеством цифр: $count")
    }
}

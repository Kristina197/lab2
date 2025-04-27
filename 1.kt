fun main() {
    val S = readLine()!! // Исходная строка для сжатия
    var compressed = "" // Строка для хранения сжатого результата
    var count = 1 // Счётчик повторяющихся символов
    
    // Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
    for (i in 1 until S.length) {
        if (S[i] == S[i - 1]) {
            count++
        }
        // Если символы разные, добавляем предыдущий символ и счётчик в результат
        else {
            compressed += S[i - 1]
            compressed += count.toString()
            count = 1
        }
    }
    
    // Добавляем последний символ и его количество
    compressed += S.last()
    compressed += count.toString()
    
    // Проверяем, эффективно ли сжатие
    if (compressed.length < S.length) {
        println(compressed) // Выводим сжатую версию
    } else {
        println(S) // Выводим исходную строку
    }
}

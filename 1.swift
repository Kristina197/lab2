import Foundation

var S = readLine() ?? ""// Исходная строка для сжатия
var compressed = ""  // Строка для хранения сжатого результата
var count = 1        // Счётчик повторяющихся символов

// Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
for i in 1..<S.count {
    let currentIndex = S.index(S.startIndex, offsetBy: i)
    let previousIndex = S.index(S.startIndex, offsetBy: i-1)
    
    if S[currentIndex] == S[previousIndex] {
        count += 1
    }
    // Если символы разные, добавляем предыдущий символ и счётчик в результат
    else {
        compressed.append(S[previousIndex])
        compressed.append(String(count))
        count = 1
    }
}

// Добавляем последний символ и его счетчик
if let lastChar = S.last {
    compressed.append(lastChar)
    compressed.append(String(count))
}

// Проверяем, эффективно ли сжатие
if compressed.count < S.count {
    print(compressed)  // Выводим сжатую версию
} else {
    print(S)          // Выводим исходную строку
}

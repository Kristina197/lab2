import Foundation
print("Введите количество элементов массива: ", terminator: "")
guard let sizeInput = readLine(), let size = Int(sizeInput) else {
    print("Ошибка ввода")
    exit(1)
}

// Проверка на корректность ввода
if size <= 0 {
    print("Количество элементов должно быть положительным")
    exit(1) // Завершаем с ошибкой
}

// Создание массива размера size (аналог динамического массива в C++)
var nums = [Int](repeating: 0, count: size)
print("Введите элементы массива:")

// Ввод элементов
for j in 0..<size {
    guard let numInput = readLine(), let num = Int(numInput) else {
        print("Ошибка ввода")
        exit(1)
    }
        
// Проверка каждого элемента
    if num <= 0 {
        print("Элементы должны быть положительными и целыми")
        exit(1) // В Swift память освобождается автоматически
    } 
    else {
        nums[j] = num
    }
}

// Обработка и вывод чисел
for i in 0..<size {
    if nums[i] < 10 {
        continue // Пропускаем числа меньше 10
    }
    var rez = 0
    var originalNum = nums[i] // Сохраняем оригинальное число
        
    while originalNum > 0 {
        rez = rez * 10 + originalNum % 10
        originalNum /= 10
    }
        
    // Удаление ведущих нулей происходит автоматически при выводе числа
    print("\(rez) ", terminator: "")
}

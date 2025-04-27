import Foundation


var num: Int = 0
var count: Int = 0
var size: Int = 0
    
print("Введите количество элементов массива: ", terminator: "")
if let input = readLine(), let inputSize = Int(input) {
    size = inputSize
} 
else {
    print("Количество элементов должно быть положительным и целым")
    exit(1) // Завершаем программу с ошибкой
}

// Проверка на корректность ввода
if size <= 0 {
    print("Количество элементов должно быть положительным и целым")
    exit(1) // Завершаем программу с ошибкой если число не положительное или нецелое
}
else {
    var nums = [Int](repeating: 0, count: size) // Создаем массив размера size
    print("Введите элементы массива:")
        
    for j in 0..<size {
        if let input = readLine(), let inputNum = Int(input) {
            num = inputNum
        } else {
            print("Элементы должны быть положительными и целыми")
            exit(1) // Завершаем с ошибкой
        }
            
        // Проверка каждого элемента
        if num <= 0 || num % 1 != 0 {
            print("Элементы должны быть положительными и целыми")
            exit(1) // Завершаем с ошибкой
        }
        else {
            nums[j] = num // Сохраняем значения в массив
        }
    }

    for i in 0..<size {
        if String(nums[i]).count % 2 == 1 {
            count += 1
        }
    }
    print("Количество чисел с нечетным количеством цифр: \(count)")
}

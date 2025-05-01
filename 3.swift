import Foundation

// Функция для переворота числа и удаления ведущих нулей
func revers_num(_ num: Int) -> Int {
    var num = num
    var revers = 0
    while num != 0 {  // Переворачиваем число
        revers = revers * 10 + num % 10
        num /= 10
    }
    return revers
}

func main() -> Int {
    setlocale(LC_ALL, "")
    
    guard let n = Int(readLine() ?? "") else {
        print("Количество элементов должно быть положительным и целым")
        return 1
    }
    
    // Проверка на корректность ввода
    if n <= 0 {
        print("Количество элементов должно быть положительным и целым")
        return 1
    } 
    else {
        for _ in 0..<n {
            guard let num = Int(readLine() ?? "") else {
                print("Числа должны быть положительным и целым")
                return 1
            }
            
            // Проверка на корректность ввода
            if num <= 0 {
                print("Числа должны быть положительным и целым")
                return 1
            }
            else {
                // Вызываем функцию revers_num и выводим
                print(revers_num(num), terminator: " ")
            }
        }
    }
    
    return 0
}

// Вызываем основную функцию
let _ = main()

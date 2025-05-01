import sys

# Функция для переворота числа и удаления ведущих нулей
def revers_num(num):
    revers = 0
    while num != 0:  # Переворачиваем число
        revers = revers * 10 + num % 10
        num = num // 10  # Целочисленное деление
    return revers

def main():
    
    try:
        n = int(input())
    except ValueError:
        print("Количество элементов должно быть положительным и целым")
        sys.exit(1)  # Завершаем программу с ошибкой
        
    # Проверка на корректность ввода
    if n <= 0:
        print("Количество элементов должно быть положительным и целым")
        sys.exit(1)
    else:
        for _ in range(n):
            try:
                num = int(input())
            except ValueError:
                print("Числа должны быть положительным и целым")
                sys.exit(1)
                
            # Проверка на корректность ввода
            if num <= 0:
                print("Числа должны быть положительным и целым")
                sys.exit(1)
            else:
                # Переворачиваем число и выводим
                print(revers_num(num), end=" ") 

    sys.exit(0)

if __name__ == "__main__":
    main()

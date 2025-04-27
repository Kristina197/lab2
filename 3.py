import sys

def main():
    size = int(input("Введите количество элементов массива: "))
    
    # Проверка на корректность ввода
    if size <= 0:
        print("Количество элементов должно быть положительным")
        sys.exit(1)  # Завершаем с ошибкой
    
    # Создание списка
    nums = [0] * size
    print("Введите элементы массива:")
    
    # Ввод элементов
    for j in range(size):
        num = int(input())
        # Проверка каждого элемента
        if num <= 0:
            print("Элементы должны быть положительными и целыми")
            sys.exit(1)  
        else:
            nums[j] = num
    
    # Обработка и вывод чисел
    for i in range(size):
        if nums[i] < 10:
            continue  # Пропускаем числа меньше 10
        
        rez = 0
        original_num = nums[i]  # Сохраняем оригинальное число
        
        while original_num > 0:
            rez = rez * 10 + original_num % 10
            original_num = original_num // 10  # Целочисленное деление
        
        # Удаление ведущих нулей происходит автоматически
        print(rez, end=' ')
    
    print()  # Перевод строки
    return 0

if __name__ == "__main__":
    sys.exit(main())

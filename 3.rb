# Функция для переворота числа и удаления ведущих нулей
def revers_num(num)
  revers = 0
  while num != 0  # Переворачиваем число
    revers = revers * 10 + num % 10
    num /= 10
  end
  revers
end

# Чтение количества чисел
n = gets.to_i

# Проверка на корректность ввода
if n <= 0
    puts "Количество элементов должно быть положительным и целым"
    exit(1) # Завершаем программу с ошибкой
else
    (0...n).each do |i|
        # Чтение числа
        num = gets.to_i
        # Проверка на корректность ввода
        if num <= 0
            puts "Числа должны быть положительным и целым"
            exit(1) # Завершаем программу с ошибкой
        else
            # Переворачиваем число и выводим
            print "#{revers_num(num)} "  
        end
    end
end

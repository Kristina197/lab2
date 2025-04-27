print "Введите количество элементов массива: "
size = gets.chomp.to_i

# Проверка на корректность ввода
if size <= 0
    puts "Количество элементов должно быть положительным"
    exit(1) # Завершаем с ошибкой
end

# Создание массива (аналог динамического массива в C++)
nums = Array.new(size)
puts "Введите элементы массива:"

# Ввод элементов
(0...size).each do |j|
    num = gets.chomp.to_i

    # Проверка каждого элемента
    if num <= 0
        puts "Элементы должны быть положительными и целыми"
        exit(1) # В Ruby память освобождается автоматически
    else
        nums[j] = num
    end
end

# Обработка и вывод чисел
nums.each do |num|
    next if num < 10 # Пропускаем числа меньше 10

    rez = 0
    original_num = num # Сохраняем оригинальное число

    while original_num > 0
      rez = rez * 10 + original_num % 10
      original_num /= 10
    end

    # Удаление ведущих нулей происходит автоматически
    print "#{rez} "
end

puts # Перевод строки
exit(0)

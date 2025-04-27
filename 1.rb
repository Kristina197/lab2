S = gets.chomp # Исходная строка для сжатия
compressed = ""  # Строка для хранения сжатого результата
count = 1        # Счётчик повторяющихся символов

# Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
(1...S.length).each do |i|
  if S[i] == S[i - 1]
    count += 1
  # Если символы разные, добавляем предыдущий символ и счётчик в результат
  else
    compressed += S[i - 1]
    compressed += count.to_s
    count = 1
  end
end

compressed += S[-1]
compressed += count.to_s

# Проверяем, эффективно ли сжатие
if compressed.length < S.length
  puts compressed  # Выводим сжатую версию
else
  puts S          # Выводим исходную строку
end

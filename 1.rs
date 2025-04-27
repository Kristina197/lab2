use std::io;

fn main() {
    let mut S = String::new();  // Исходная строка для сжатия
    io::stdin().read_line(&mut S).expect("Ошибка чтения строки");
    let S = S.trim();
    let mut compressed = String::new();  // Строка для хранения сжатого результата
    let mut count = 1;      // Счётчик повторяющихся символов
    let chars: Vec<char> = S.chars().collect();
    
    // Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
    for i in 1..chars.len() {
        if chars[i] == chars[i - 1] {
            count += 1;
        }
        // Если символы разные, добавляем предыдущий символ и счётчик в результат
        else {
            compressed.push(chars[i - 1]);
            compressed.push_str(&count.to_string());
            count = 1;
        }
    }
    
    compressed.push(chars[chars.len() - 1]);
    compressed.push_str(&count.to_string());
    
    // Проверяем, эффективно ли сжатие
    if compressed.len() < S.len() {
        println!("{}", compressed);  // Выводим сжатую версию
    } else {
        println!("{}", S);  // Выводим исходную строку
    }
}

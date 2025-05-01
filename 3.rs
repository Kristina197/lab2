use std::io;
use std::process;

// Функция для переворота числа и удаления ведущих нулей
fn revers_num(mut num: i32) -> i32 {
    let mut revers = 0;
    while num != 0 {  // Переворачиваем число
        revers = revers * 10 + num % 10;
        num /= 10;
    }
    revers
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения");
    let n: i32 = match input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Количество элементов должно быть положительным и целым");
            process::exit(1);
        }
    };

    // Проверка на корректность ввода
    if n <= 0 {
        println!("Количество элементов должно быть положительным и целым");
        process::exit(1);
    } else {
        for _ in 0..n {
            let mut num_input = String::new();
            io::stdin().read_line(&mut num_input).expect("Ошибка чтения");
            let num: i32 = match num_input.trim().parse() {
                Ok(num) => num,
                Err(_) => {
                    println!("Числа должны быть положительным и целым");
                    process::exit(1);
                }
            };

            // Проверка на корректность ввода
            if num <= 0 {
                println!("Числа должны быть положительным и целым");
                process::exit(1);
            } else {
                print!("{} ", revers_num(num));  // Вызываем функцию revers_num и выводим
            }
        }
    }

    process::exit(0);
} 

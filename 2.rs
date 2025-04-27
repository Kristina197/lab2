use std::io;

fn main() {
    let mut count = 0;
    
    println!("Введите количество элементов массива: ");
    let mut size_input = String::new();
    io::stdin().read_line(&mut size_input).expect("Ошибка чтения");
    let size: i32 = size_input.trim().parse().expect("Введите целое число");

    // Проверка на корректность ввода
    if size <= 0 {
        println!("Количество элементов должно быть положительным и целым");
        std::process::exit(1); // Завершаем программу с ошибкой
    } else {
        let mut nums: Vec<i32> = Vec::with_capacity(size as usize); //  Динамический массив
        
        println!("Введите элементы массива:");
        for _ in 0..size {
            let mut num_input = String::new();
            io::stdin().read_line(&mut num_input).expect("Ошибка чтения");
            let num: i32 = num_input.trim().parse().expect("Введите целое число");
            
            if num <= 0 || num % 1 != 0 { // Проверка каждого элемента
                println!("Элементы должны быть положительными и целыми");
                std::process::exit(1); // Завершаем с ошибкой
            } else {
                nums.push(num); // Сохраняем значения в массив
            }
        }

        for num in &nums {
            if num.to_string().len() % 2 == 1 {
                count += 1;
            }
        }
        
        println!("Количество чисел с нечетным количеством цифр: {}", count);
    }
}

use std::io;

fn main() -> io::Result<()> {
    println!("Введите количество элементов массива: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input)?;
    let size: i32 = input.trim().parse().unwrap_or(0);

    // Проверка на корректность ввода
    if size <= 0 {
        println!("Количество элементов должно быть положительным");
        std::process::exit(1); // Завершаем с ошибкой
    }

    // Создание динамического массива (вектора) размера size
    let mut nums: Vec<i32> = Vec::with_capacity(size as usize);
    println!("Введите элементы массива:");

    // Ввод элементов
    for _ in 0..size {
        let mut num_input = String::new();
        io::stdin().read_line(&mut num_input)?;
        let num: i32 = num_input.trim().parse().unwrap_or(0);
        
        // Проверка каждого элемента
        if num <= 0 {
            println!("Элементы должны быть положительными и целыми");
            std::process::exit(1); // В Rust память освобождается автоматически
        } else {
            nums.push(num);
        }
    }

    // Обработка и вывод чисел
    for i in 0..nums.len() {
        if nums[i] < 10 {
            continue; // Пропускаем числа меньше 10
        }
        
        let mut rez = 0;
        let mut original_num = nums[i]; // Сохраняем оригинальное число
        
        while original_num > 0 {
            rez = rez * 10 + original_num % 10;
            original_num /= 10;
        }
        
        // Удаление ведущих нулей происходит автоматически при выводе числа
        print!("{} ", rez);
    }

    println!();
    Ok(())
}

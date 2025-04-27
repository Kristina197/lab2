const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

    // Ввод размера массива
readline.question('Введите количество элементов массива: ', (sizeInput) => {
    const size = parseInt(sizeInput);
    // Проверка на корректность ввода
    if (size <= 0 || isNaN(size)) {
        console.log("Количество элементов должно быть положительным");
        readline.close();
        process.exit(1); // Завершаем с ошибкой
    }

    // Создание массива (аналог динамического массива в C++)
    const nums = new Array(size);
    console.log("Введите элементы массива:");

    let currentIndex = 0;

    // Рекурсивная функция для ввода элементов
    const inputNumber = () => {
        if (currentIndex < size) {
            readline.question('', (numInput) => {
                const num = parseInt(numInput);

                // Проверка каждого элемента
                if (num <= 0 || isNaN(num)) {
                    console.log("Элементы должны быть положительными и целыми");
                    readline.close();
                    process.exit(1); // В JS память освобождается автоматически
                }
                else {
                    nums[currentIndex] = num;
                    currentIndex++;
                    inputNumber(); // Рекурсивный вызов для следующего элемента
                }
            });
        }
        else {
             // Все элементы введены, начинаем обработку
             processNumbers(nums);
        }
    };

    // Функция обработки и вывода чисел
    const processNumbers = (numbers) => {
        let output = "";

        for (let i = 0; i < numbers.length; i++) {
            if (numbers[i] < 10) {
                continue; // Пропускаем числа меньше 10
            }

            let rez = 0;
            let originalNum = numbers[i]; // Сохраняем оригинальное число

            while (originalNum > 0) {
                rez = rez * 10 + originalNum % 10;
                originalNum = Math.floor(originalNum / 10);
            }

        // Удаление ведущих нулей происходит автоматически
            output += rez + " ";
        }

     console.log(output);
     readline.close();
    };

    inputNumber(); // Начинаем ввод чисел
});

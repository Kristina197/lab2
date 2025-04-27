// Исходная строка для сжатия
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

let num;
let count = 0;
let size;

readline.question('Введите количество элементов массива: ', (input) => {
    size = parseInt(input.trim());

    // Проверка на корректность ввода
    if (size <= 0 || isNaN(size)) {
        console.log("Количество элементов должно быть положительным и целым");
        process.exit(1); // Завершаем программу с ошибкой если число не положительное или нецелое
    } else {
        const nums = new Array(size); // Создаем массив размера size
        console.log("Введите элементы массива:");

        let currentIndex = 0;

        const readNextNumber = () => {
            if (currentIndex < size) {
                readline.question('', (inputNum) => {
                    num = parseInt(inputNum.trim());

                    // Проверка каждого элемента
                    if (num <= 0 || isNaN(num) || num % 1 !== 0) {
                        console.log("Элементы должны быть положительными и целыми");
                        process.exit(1); // Завершаем с ошибкой
                    } else {
                        nums[currentIndex] = num; // Сохраняем значения в массив
                        currentIndex++;
                        readNextNumber();
                    }
                });
            } else {
                for (let i = 0; i < size; i++) {
                    if (nums[i].toString().length % 2 === 1) {
                        count++;
                    }
                }
                console.log(`Количество чисел с нечетным количеством цифр: ${count}`);
                readline.close();
            }
        };
        readNextNumber();
    }
});

// Функция для переворота числа
function revers_num(num: number): number {
    let revers = 0;
    while (num !== 0) {
        revers = revers * 10 + num % 10;
        num = Math.floor(num / 10);
    }
    return revers;
}

async function main(): Promise<number> {
    const nInput = prompt("") || "";
    const n = parseInt(nInput);

    // Проверка ввода
    if (isNaN(n) || n <= 0) {
        console.log("Количество элементов должно быть положительным и целым");
        return 1;
    }
    // Чтение чисел
    const numbersInput = prompt("") || "";
    const numbers = numbersInput.trim().split(/\s+/).map(Number);

    let output = "";
    for (let i = 0; i < n; ++i) {
        const num = numbers[i];
        
        if (isNaN(num) || num <= 0) {
            console.log("Числа должны быть положительным и целым");
            return 1;
        }
        
        output += revers_num(num);
        if (i < n - 1) output += " ";// Вывод числа
    }

    console.log(output);
    return 0;
}

// Запуск программы
main();

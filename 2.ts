async function main() {
    let count = 0;
    let size: number;

    // Ввод количества элементов
    const sizeInput = prompt("Введите количество элементов массива:");
    size = parseInt(sizeInput);

    // Проверка на корректность ввода
    if (isNaN(size) || size <= 0) {
        alert("Количество элементов должно быть положительным и целым");
        return;
    }

    const nums: number[] = [];
    alert("Введите элементы массива:");

    // Ввод элементов массива
    for (let j = 0; j < size; j++) {
        const numInput = prompt(`Элемент ${j + 1}/${size}:`);
        if (numInput === null) return;
        
        const num = parseInt(numInput);

        if (isNaN(num) || num <= 0 || !Number.isInteger(num)) {
            alert("Элементы должны быть положительными и целыми");
            return;
        }
        
        nums.push(num);
    }

    // Подсчет чисел с нечетным количеством цифр
    for (const num of nums) {
        if (num.toString().length % 2 === 1) {
            count++;
        }
    }

    alert(`Количество чисел с нечетным количеством цифр: ${count}`);
}

// Запуск программы
main();

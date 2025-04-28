async function main() {
    // Ввод количества элементов
    const sizeInput = prompt("Введите количество элементов массива:");
    if (sizeInput === null) return;
    
    const size = parseInt(sizeInput);

    // Проверка на корректность ввода
    if (isNaN(size) || size <= 0) {
        alert("Количество элементов должно быть положительным");
        return;
    }

    const nums: number[] = [];
    alert("Введите элементы массива:");

    // Ввод элементов массива
    for (let j = 0; j < size; j++) {
        const numInput = prompt(`Элемент ${j + 1}/${size}:`);
        if (numInput === null) {
            alert("Ввод отменен");
            return;
        }
        
        const num = parseInt(numInput);

        if (isNaN(num) || num <= 0) {
            alert("Элементы должны быть положительными и целыми");
            return;
        }
        
        nums.push(num);
    }

    // Обработка и вывод чисел
    let output = "";
    for (let i = 0; i < size; i++) {
        if (nums[i] < 10) {
            continue; // Пропускаем числа меньше 10
        }
        
        let reversed = 0;
        let originalNum = nums[i];
        
        while (originalNum > 0) {
            reversed = reversed * 10 + originalNum % 10;
            originalNum = Math.floor(originalNum / 10);
        }
        
        output += reversed + " ";
    }

    alert(output);
}

// Запуск программы
main();

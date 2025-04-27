// Исходная строка для сжатия
let S = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
}).question('', input => {
    S = input.trim();
    let compressed = "";  // Строка для хранения сжатого результата
    let count = 1;        // Счётчик повторяющихся символов

    // Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
    for (let i = 1; i < S.length; ++i) {
        if (S[i] === S[i - 1]) {
            count++;
        }
        // Если символы разные, добавляем предыдущий символ и счётчик в результат
        else {
            compressed += S[i - 1];
            compressed += count.toString();
            count = 1;
        }
    }

    compressed += S[S.length - 1];
    compressed += count.toString();

    // Проверяем, эффективно ли сжатие
    if (compressed.length < S.length) {
        console.log(compressed);  // Выводим сжатую версию
    } else {
        console.log(S);          // Выводим исходную строку
    }

    process.exit(0);
});

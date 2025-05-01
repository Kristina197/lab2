<?php
// Функция для переворота числа и удаления ведущих нулей
function revers_num($num) {
    $revers = 0;
    while ($num != 0) {  // Переворачиваем число
        $revers = $revers * 10 + $num % 10;
        $num = (int)($num / 10);
    }
    return $revers;
}
setlocale(LC_ALL, "");

// Чтение количества чисел
$input = trim(fgets(STDIN));
$n = (int)$input;

// Проверка на корректность ввода
if ($n <= 0) {
    echo "Количество элементов должно быть положительным и целым" . PHP_EOL;
    exit(1); // Завершаем программу с ошибкой
} else {
    for ($i = 0; $i < $n; ++$i) {
        $input = trim(fgets(STDIN));
        $num = (int)$input;
        
        // Проверка на корректность ввода
        if ($num <= 0) {
            echo "Числа должны быть положительным и целым" . PHP_EOL;
            exit(1); // Завершаем программу с ошибкой
        } else {
            echo revers_num($num) . " "; // Вызываем функцию revers_num и выводим
        }
    }
}

exit(0);
?>

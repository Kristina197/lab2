package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var S string                   // Исходная строка для сжатия
	scanner := bufio.NewScanner(os.Stdin)
	if scanner.Scan() {
		S = scanner.Text()
	}
	var compressed string          // Строка для хранения сжатого результата
	count := 1                     // Счётчик повторяющихся символов
	// Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
	for i := 1; i < len(S); i++ {
		if S[i] == S[i-1] {
			count++
		} else {
			// Если символы разные, добавляем предыдущий символ и счётчик в результат
			compressed += string(S[i-1])
			compressed += strconv.Itoa(count)
			count = 1
		}
	}
	compressed += string(S[len(S)-1])
	compressed += strconv.Itoa(count)
	// Проверяем, эффективно ли сжатие
	if len(compressed) < len(S) {
		fmt.Println(compressed)    // Выводим сжатую версию
	} else {
		fmt.Println(S)            // Выводим исходную строку
	}
}

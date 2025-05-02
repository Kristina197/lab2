package main

import (
	"fmt"
	"os"
)

// Функция для переворота числа и удаления ведущих нулей
func revers_num(num int) int {
	revers := 0
	for num != 0 { // Переворачиваем число
		revers = revers*10 + num%10
		num /= 10
	}
	return revers
}

func main() {
	var n int
	_, err := fmt.Scan(&n)
	// Проверка на корректность ввода
	if err != nil || n <= 0 {
		fmt.Println("Количество элементов должно быть положительным и целым")
		os.Exit(1) // Завершаем программу с ошибкой если число не положительное или нецелое
	} else {
		for i := 0; i < n; i++ {
			var num int
			_, err := fmt.Scan(&num)
			// Проверка на корректность ввода
			if err != nil || num <= 0 {
				fmt.Println("Числа должны быть положительным и целым")
				os.Exit(1) // Завершаем программу с ошибкой если число не положительное или нецелое
			} else {
				fmt.Printf("%d ", revers_num(num)) // Вызываем функцию revers_num и выводим
			}
		}
	}

	os.Exit(0)
}

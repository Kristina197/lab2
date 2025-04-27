package main

import (
	"fmt"
	"os"
)

func main() {
	var size int
	fmt.Print("Введите количество элементов массива: ")
	_, err := fmt.Scan(&size)
	if err != nil {
		os.Exit(1)
	}

	// Проверка на корректность ввода
	if size <= 0 {
		fmt.Println("Количество элементов должно быть положительным")
		os.Exit(1) // Завершаем с ошибкой
	}

	// Создание динамического массива (среза) размера size
	nums := make([]int, size)
	fmt.Println("Введите элементы массива:")

	// Ввод элементов
	for j := 0; j < size; j++ {
		var num int
		_, err := fmt.Scan(&num)
		if err != nil {
			os.Exit(1)
		}
		
		// Проверка каждого элемента
		if num <= 0 {
			fmt.Println("Элементы должны быть положительными и целыми")
			os.Exit(1) // В Go память освобождается автоматически
		} else {
			nums[j] = num
		}
	}

	// Обработка и вывод чисел
	for i := 0; i < size; i++ {
		if nums[i] < 10 {
			continue // Пропускаем числа меньше 10
		}
		
		rez := 0
		originalNum := nums[i] // Сохраняем оригинальное число
		
		for originalNum > 0 {
			rez = rez*10 + originalNum%10
			originalNum /= 10
		}
		
		// Удаление ведущих нулей происходит автоматически при выводе числа
		fmt.Printf("%d ", rez)
	}

	fmt.Println()
	os.Exit(0)
}

package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	var num int
	count := 0
	var size int

	fmt.Print("Введите количество элементов массива: ")
	_, err := fmt.Scan(&size)
	if err != nil {
		fmt.Println("Ошибка ввода")
		os.Exit(1)
	}

	// Проверка на корректность ввода
	if size <= 0 {
		fmt.Println("Количество элементов должно быть положительным и целым")
		os.Exit(1) // Завершаем программу с ошибкой если число не положительное или нецелое
	} else {
		nums := make([]int, size) // Создаем динамический массив размера size
		fmt.Println("Введите элементы массива:")
		for j := 0; j < size; j++ {
			_, err := fmt.Scan(&num)
			if err != nil {
				fmt.Println("Ошибка ввода")
				os.Exit(1)
			}
			if num <= 0 || num%1 != 0 { // Проверка каждого элемента
				fmt.Println("Элементы должны быть положительными и целыми")
				os.Exit(1) // Завершаем с ошибкой
			} else {
				nums[j] = num // Сохраняем значения в массив
			}
		}

		for i := 0; i < size; i++ {
			if len(strconv.Itoa(nums[i]))%2 == 1 {
				count++
			}
		}
		fmt.Printf("Количество чисел с нечетным количеством цифр: %d\n", count)
	}
}

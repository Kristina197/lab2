#include <iostream>
using namespace std;

int main() {
	setlocale(LC_ALL, "");
	int size;
	cout << "Введите количество элементов массива: ";
	cin >> size;
	//Проверка на корректность ввода
	if (size <= 0) {
		cout << "Количество элементов должно быть положительным" << endl;
		return 1;//Завершаем с ошибкой
	}
	//Создание динамического массива размера size
	int* nums = new int[size];
	cout << "Введите элементы массива:" << endl;
	//Ввод элементов
	for (int j = 0; j < size; j++) {
		int num;
		cin >> num;
		//Проверка каждого элемента
		if (num <= 0) {
			cout << "Элементы должны быть положительными и целыми" << endl;
			delete[] nums; // Освобождаем память
			return 1; // Завершаем программу с ошибкой
		}
		else {
			nums[j] = num;
		}
	}

	for (int i = 0; i < size; i++) {
		if (nums[i] < 10) {
			continue; // Пропускаем числа меньше 10
		}
		int rez = 0;
		int original_num = nums[i]; // Сохраняем оригинальное число для вывода
		while (original_num > 0) {
			rez = rez * 10 + original_num % 10;
			original_num /= 10;
		}
		// Удаляем ведущие нули (если есть)
		cout << rez << " ";
	}
	cout << endl;
	delete[] nums;
	return 0;
}

#include <iostream>
#include <string>
using namespace std;

int main() {
	setlocale(LC_ALL, "");
	int num;
	int count = 0;
	int size;
	cout << "Введите количество элементов массива: ";
	cin >> size;

	// Проверка на корректность ввода
	if (size <= 0) {
		cout << "Количество элементов должно быть положительным и целым" << endl;
		return 1; // Завершаем программу с ошибкой если число не положительное или нецелое
	}
	else {
		int* nums = new int[size]; // Создаем динамический массив размера size
		cout << "Введите элементы массива:" << endl;
		for (int j = 0; j < size; j++) {
			cin >> num;
			if (num <= 0 || num % 1 != 0) { //Проверка каждого элемента
				cout << "Элементы должны быть положительными и целыми" << endl;
				return 1; // Завершаем с ошибкой
			}
			else {
				nums[j] = num; //Сохраняем значения в массив
			}
		}

		for (int i = 0; i < size; i++) {
			if (to_string(nums[i]).length() % 2 == 1) {
				count++;
			}
		}
		cout << "Количество чисел с нечетным количеством цифр: " << count << endl;
		delete[] nums;
	}
	return 0;
}

#include <iostream>
using namespace std;

// Функция для переворота числа и удаления ведущих нулей
int revers_num(int num) {
    int revers = 0;
    while (num != 0) {  // Переворачиваем число
        revers = revers * 10 + num % 10;
        num /= 10;
    }
    return revers;
}

int main() {
    setlocale(LC_ALL, "");
    int n;
    cin >> n;
    //Проверка на корректность ввода
    if (n <= 0) {
        cout << "Количество элементов должно быть положительным и целым" << endl;
        return 1; // Завершаем программу с ошибкой если число не положительное или нецелое
    }
    else {
        for (int i = 0; i < n; ++i) {
            int num; 
            cin >> num;
            //Проверка на корректность ввода
            if (num <= 0) {
                cout << "Числа должны быть положительным и целым" << endl;
                return 1; // Завершаем программу с ошибкой если число не положительное или нецелое
            }
            else {
                cout << revers_num(num) << " ";    // Вызываем функцию revers_num и выводим
            }

        }
    }

    return 0;
}

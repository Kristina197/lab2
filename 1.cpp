#include <iostream>
#include <string>
using namespace std;

int main() {
	string S; // Исходная строка для сжатия
	getline(cin, S);
	string compressed; // Строка для хранения сжатого результата
	int count = 1; // Счётчик повторяющихся символов
	// Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
	for (size_t i = 1; i < S.length(); ++i) {
		if (S[i] == S[i - 1]) {
			count++;
		}
		// Если символы разные, добавляем предыдущий символ и счётчик в результат
		else {
			compressed += S[i - 1];
			compressed += to_string(count);
			count = 1;
		}
	}
	compressed += S.back();
	compressed += to_string(count);
	// Проверяем, эффективно ли сжатие
	if (compressed.length() < S.length()) {
		cout << compressed << endl; // Выводим сжатую версию
	}
	else {
		cout << S << endl; // Выводим исходную строку
	}
	return 0;
}

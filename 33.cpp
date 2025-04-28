#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main() {
    string num;
    bool first = true;
    
    while (cin >> num) {
        // Переворачиваем строку
        reverse(num.begin(), num.end());
        
        // Удаляем ведущие нули
        size_t non_zero = num.find_first_not_of('0');
        if (non_zero != string::npos) {
            num = num.substr(non_zero);
        } else {
            // Если число состояло только из нулей, оставляем один ноль
            num = "0";
        }
        
        // Выводим с пробелом, кроме первого числа
        if (!first) {
            cout << " ";
        }
        cout << num;
        first = false;
    }
    
    return 0;
}

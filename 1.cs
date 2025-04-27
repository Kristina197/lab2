using System;
using System.Text;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();// Считывание строки из консоли
        StringBuilder compressed = new StringBuilder();// Строка для хранения сжатого результата
        int count = 1;// Счётчик для повторяющихся символов
        // Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
        for (int i = 1; i < S.Length; i++)
        {
            if (S[i] == S[i - 1])
            {
                count++;
            }
            // Если символы разные, добавляем предыдущий символ и счётчик в результат
            else
            {
                // Добавляем предыдущий символ и его количество
                compressed.Append(S[i - 1]);// Добавляем символ
                compressed.Append(count);// Добавляем количество повторений
                count = 1;
            }
        }

        // Добавляем последний символ и его количество
        compressed.Append(S[S.Length - 1]);
        compressed.Append(count);

        // Проверяем эффективность сжатия
        if (compressed.Length < S.Length)
        {
            Console.WriteLine(compressed.ToString());// Выводим сжатую версию
        }
        else
        {
            Console.WriteLine(S);// Выводим исходную строку
        }
    }
}

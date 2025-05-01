using System;

class Program
{
    // Функция для переворота числа и удаления ведущих нулей
    static int revers_num(int num)
    {
        int revers = 0;
        while (num != 0)  // Переворачиваем число
        {
            revers = revers * 10 + num % 10;
            num /= 10;
        }
        return revers;
    }

    static int Main()
    {
        Console.OutputEncoding = System.Text.Encoding.UTF8;
        int n;
        string input = Console.ReadLine();
        if (!int.TryParse(input, out n))
        {
            Console.WriteLine("Количество элементов должно быть положительным и целым");
            return 1;
        }

        // Проверка на корректность ввода
        if (n <= 0)
        {
            Console.WriteLine("Количество элементов должно быть положительным и целым");
            return 1;
        }
        else
        {
            for (int i = 0; i < n; ++i)
            {
                input = Console.ReadLine();
                int num;
                if (!int.TryParse(input, out num))
                {
                    Console.WriteLine("Количество элементов должно быть положительным и целым");
                    return 1;
                }

                // Проверка на корректность ввода
                if (num <= 0)
                {
                    Console.WriteLine("Числа должны быть положительным и целым");
                    return 1;
                }
                else
                {
                    // Переворачиваем число и выводим с пробелом
                    Console.Write(revers_num(num) + " ");
                }
            }
        }

        return 0;
    }
}

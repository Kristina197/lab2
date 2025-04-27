using System;

class Program
{
    static int Main()
    {
        Console.OutputEncoding = System.Text.Encoding.UTF8; //Добавление русского языка
        int size;
        Console.Write("Введите количество элементов массива: ");
        size = int.Parse(Console.ReadLine());

        // Проверка на корректность ввода
        if (size <= 0)
        {
            Console.WriteLine("Количество элементов должно быть положительным");
            return 1; // Завершаем с ошибкой
        }

        // Создание массива размера size
        int[] nums = new int[size];
        Console.WriteLine("Введите элементы массива:");

        // Ввод элементов
        for (int j = 0; j < size; j++)
        {
            int num = int.Parse(Console.ReadLine());

            // Проверка каждого элемента
            if (num <= 0)
            {
                Console.WriteLine("Элементы должны быть положительными и целыми");
                return 1; // В C# память освобождается автоматически
            }
            else
            {
                nums[j] = num;
            }
        }

        // Обработка и вывод чисел
        for (int i = 0; i < size; i++)
        {
            if (nums[i] < 10)
            {
                continue; // Пропускаем числа меньше 10
            }

            int rez = 0;
            int original_num = nums[i]; // Сохраняем оригинальное число

            while (original_num > 0)
            {
                rez = rez * 10 + original_num % 10;
                original_num /= 10;
            }

            // Удаление ведущих нулей происходит автоматически при выводе числа
            Console.Write(rez + " ");
        }

        Console.WriteLine();
        return 0;
    }
}

using System;

class Program
{
    static int Main()
    {
        Console.OutputEncoding = System.Text.Encoding.UTF8; // Добавление русского языка
        int num;
        int count = 0;
        int size;
        Console.Write("Введите количество элементов массива: ");
        size = Convert.ToInt32(Console.ReadLine());

        // Проверка на корректность ввода
        if (size <= 0)
        {
            Console.WriteLine("Количество элементов должно быть положительным и целым");
            return 1; // Завершаем программу с ошибкой если число не положительное или нецелое
        }
        else
        {
            int[] nums = new int[size]; // Создаем массив размера size (аналог new int[size] в C++)
            Console.WriteLine("Введите элементы массива:");
            for (int j = 0; j < size; j++)
            {
                num = Convert.ToInt32(Console.ReadLine());
                if (num <= 0 || num % 1 != 0) // Проверка каждого элемента
                {
                    Console.WriteLine("Элементы должны быть положительными и целыми");
                    return 1; // Завершаем с ошибкой
                }
                else
                {
                    nums[j] = num; // Сохраняем значения в массив
                }
            }

            for (int i = 0; i < size; i++)
            {
                if (nums[i].ToString().Length % 2 == 1)
                {
                    count++;
                }
            }
            Console.WriteLine("Количество чисел с нечетным количеством цифр: " + count);
        }
        return 0;
    }
}

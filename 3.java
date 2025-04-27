import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Введите количество элементов массива: ");
        int size = scanner.nextInt();
        
        // Проверка на корректность ввода
        if (size <= 0) {
            System.out.println("Количество элементов должно быть положительным");
            System.exit(1); // Завершаем с ошибкой
        }
        
        // Создание массива (аналог динамического массива в C++)
        int[] nums = new int[size];
        System.out.println("Введите элементы массива:");
        
        // Ввод элементов
        for (int j = 0; j < size; j++) {
            int num = scanner.nextInt();
            
            // Проверка каждого элемента
            if (num <= 0) {
                System.out.println("Элементы должны быть положительными и целыми");
                System.exit(1); // В Java память освобождается автоматически
            } else {
                nums[j] = num;
            }
        }
        
        // Обработка и вывод чисел
        for (int i = 0; i < size; i++) {
            if (nums[i] < 10) {
                continue; // Пропускаем числа меньше 10
            }
            
            int rez = 0;
            int originalNum = nums[i]; // Сохраняем оригинальное число
            
            while (originalNum > 0) {
                rez = rez * 10 + originalNum % 10;
                originalNum /= 10;
            }
            
            // Удаление ведущих нулей происходит автоматически
            System.out.print(rez + " ");
        }
        
        System.out.println();
        scanner.close();
        System.exit(0);
    }
}

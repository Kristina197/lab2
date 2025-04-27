import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int num;
        int count = 0;
        int size;
        
        System.out.print("Введите количество элементов массива: ");
        size = scanner.nextInt();
        scanner.nextLine(); // Очистка буфера

        // Проверка на корректность ввода
        if (size <= 0) {
            System.out.println("Количество элементов должно быть положительным и целым");
            System.exit(1); // Завершаем программу с ошибкой
        }
        else {
            int[] nums = new int[size]; // Создаем массив размера size
            System.out.println("Введите элементы массива:");
            
            for (int j = 0; j < size; j++) {
                num = scanner.nextInt();
                scanner.nextLine(); // Очистка буфера
                
                // Проверка каждого элемента
                if (num <= 0 || num % 1 != 0) {
                    System.out.println("Элементы должны быть положительными и целыми");
                    System.exit(1); // Завершаем с ошибкой
                }
                else {
                    nums[j] = num; // Сохраняем значения в массив
                }
            }

            for (int i = 0; i < size; i++) {
                if (String.valueOf(nums[i]).length() % 2 == 1) {
                    count++;
                }
            }
            System.out.println("Количество чисел с нечетным количеством цифр: " + count);
        }
        scanner.close();
    }
}

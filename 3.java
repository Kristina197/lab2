import java.util.Scanner;
import java.util.Locale;

public class Main {
    
    // Функция для переворота числа и удаления ведущих нулей
    public static int revers_num(int num) {
        int revers = 0;
        while (num != 0) {  // Переворачиваем число
            revers = revers * 10 + num % 10;
            num /= 10;
        }
        return revers;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        
        // Чтение количества чисел
        if (!scanner.hasNextInt()) {
            System.out.println("Количество элементов должно быть положительным и целым");
            System.exit(1);
        }
        n = scanner.nextInt();
        
        // Проверка на корректность ввода
        if (n <= 0) {
            System.out.println("Количество элементов должно быть положительным и целым");
            System.exit(1);
        } else {
            for (int i = 0; i < n; ++i) {
                int num;
                
                // Проверка на корректность ввода числа
                if (!scanner.hasNextInt()) {
                    System.out.println("Числа должны быть положительным и целым");
                    System.exit(1);
                }
                num = scanner.nextInt();
                
                // Проверка на положительность числа
                if (num <= 0) {
                    System.out.println("Числа должны быть положительным и целым");
                    System.exit(1);
                } else {
                    // Переворачиваем число и выводим
                    System.out.print(revers_num(num) + " ");
                }
            }
        }
        
        scanner.close();
        System.exit(0);
    }
}

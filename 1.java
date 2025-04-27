import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Исходная строка для сжатия
        Scanner scanner = new Scanner(System.in);
        String S = scanner.nextLine();
        String compressed = "";  // Строка для хранения сжатого результата
        int count = 1;           // Счётчик повторяющихся символов
        
        // Проходим по строке, если символ совпадает с предыдущим, увеличиваем счётчик
        for (int i = 1; i < S.length(); ++i) {
            if (S.charAt(i) == S.charAt(i - 1)) {
                count++;
            }
            // Если символы разные, добавляем предыдущий символ и счётчик в результат
            else {
                compressed += S.charAt(i - 1);
                compressed += Integer.toString(count);
                count = 1;
            }
        }
        
        compressed += S.charAt(S.length() - 1);
        compressed += Integer.toString(count);
        
        // Проверяем, эффективно ли сжатие
        if (compressed.length() < S.length()) {
            System.out.println(compressed);  // Выводим сжатую версию
        } else {
            System.out.println(S);          // Выводим исходную строку
        }
    }
}

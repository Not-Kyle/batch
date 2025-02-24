import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        System.out.println("Symbol: ");
        String first = userInput.nextLine();

        System.out.println("X Value: ");
        float second = Float.valueOf(userInput.nextFloat());

        System.out.println("Y Value: ");
        float third = Float.valueOf(userInput.nextFloat());

        System.out.println(math(first, second, third));
    }

    public static float math(String symbol, float x, float y) {
        if (symbol.equals("+")) {
            return x + y;
        } else if (symbol.equals("-")) {
            return x - y;
        } else if (symbol.equals("*")) {
            return x * y;
        } else if (symbol.equals("/")) {
            return x / y;
        } else {
            System.out.println("[ERROR]: Invalid symbol");
        }

        return 0;
    }
}

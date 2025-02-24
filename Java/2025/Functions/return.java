import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        String first = userInput.nextLine();
        float second = userInput.nextFloat();
        float third = userInput.nextFloat();

        System.out.println(math(first, second, third));
    }

    public static float math(String symbol, float x, float y) {
        if (symbol.equals("+")) {
            return x + y;
        } else if (symbol.equals("-")) { // Relearn switch statements
            return x - y;
        } else if (symbol.equals("*")) {
            return x * y;
        } else if (symbol.equals("/")) {
            return x / y;
        }

        return 0;
    }
}

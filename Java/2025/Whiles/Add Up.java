import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        int result = 0;
        int counter = 0;

        while (true) {
            if (counter == 5) {
                break;
            }

            System.out.println("Input");
            result = result + Integer.parseInt(userInput.nextLine());
            counter++;
        }

        System.out.println("Result: " + result);
    }
}

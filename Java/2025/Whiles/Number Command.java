import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        System.out.println("Please enter a number between 1 and 10");

        while (true) {
            int number = Integer.parseInt(userInput.nextLine());

            if (number == 0) {
                break;
            }

            if (number < 0 || number > 10) {
                System.out.println("[ERROR]: Number must be between 1 and 10");
                continue;
            }

            System.out.println("[RESULT]: You entered " + number);
        }

        System.out.println("mawborn.jar");
    }
}

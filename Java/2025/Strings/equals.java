import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        System.out.println("Enter: ");
        String input = userInput.nextLine();

        boolean valid = input.equals("Cory");

        if (valid) {
            System.out.println("Correct");
        } else {
            System.out.println("Incorrect");
        }
    }
}

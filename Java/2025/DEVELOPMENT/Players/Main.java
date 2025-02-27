import java.util.Random;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        Random random = new Random();

        String usersName;
        int userAge = 0;
        int identificationId = random.nextInt(9999999);

        System.out.print("Enter your username: ");
        usersName = userInput.nextLine();

        System.out.print("Enter your age: ");
        userAge = Integer.parseInt(userInput.nextLine());

        Users player = new Users(usersName, userAge, identificationId);
        boolean is18Plus = player.getAge() >= 18;

        System.out.println("\nUsername: " + player.getName());

        if (is18Plus) {
            System.out.println("Age: " + player.getAge() + " (+18)");
        } else {
            System.out.println("Age: " + player.getAge() + " (+13)");
        }

        System.out.println("UserId " + player.getUserId());
    }
}

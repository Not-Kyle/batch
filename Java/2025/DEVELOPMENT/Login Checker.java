// Feb 24 2025
// Saving the data for when I get better over time I can improve

import java.util.Scanner;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        ArrayList<String> users = new ArrayList<>();
        ArrayList<String> pass = new ArrayList<>();

        boolean userFound = false;
        boolean passFound = false;

        sout(true, "Set your username: ");
        users.add(userInput.nextLine());

        sout(true, "Set your password: ");
        pass.add(userInput.nextLine());

        sout(true, "Login [y/n]: ");
        String answer = userInput.nextLine();

        if (answer.equals("y") || answer.equals("Y")) {
            sout(true, "Enter your username: ");
            String usernameInput = userInput.nextLine();

            sout(true, "Enter your password: ");
            String passwordInput = userInput.nextLine();

            for (String user: users) {
                if (user.equals(usernameInput)) {
                    userFound = true;
                } else {
                    sout(false, "Wrong username");
                }
            }

            for (String user: pass) {
                if (user.equals(passwordInput) && userFound && !passFound) {
                    sout(true, "You are logged in!");
                    passFound = true;
                } else {
                    sout(false, "Wrong password");
                }
            }
        }

    }

    public static void sout(Boolean isSameLine, String message) {
        if (!isSameLine) {
            System.out.println(message);
        } else {
            System.out.print(message);
        }
    }
}

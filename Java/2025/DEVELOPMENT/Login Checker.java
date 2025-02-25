// Feb 24 2025

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

            for (String checker: users) {
                if (checker.equals(usernameInput)) {
                    userFound = true;
                }
            }

            for (String checker: pass) {
                if (checker.equals(passwordInput) && userFound && !passFound) {
                    sout(true, "You are logged in!");
                    passFound = true;
                } else if (!userFound) {
                    sout(false, "Wrong username");
                } else if (!checker.equals(passwordInput)) {
                    sout(false, "Wrong password");
                }
            }
        } else if (answer.equals("n") || answer.equals("N")) {
            sout(false, "No account found!");
        } else {
            return;
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

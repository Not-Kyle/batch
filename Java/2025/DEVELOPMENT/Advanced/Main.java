import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
import java.util.Arrays;

import java.lang.Math;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        Random random = new Random();

        ArrayList<String> users = new ArrayList<>();
        users.add("mawborn");

        String userName = "";
        String password = "";
        int age = 0;
        int userId = random.nextInt(9999999);
        int height = 0;

        System.out.print("Sign Up [y/n]: ");
        String firstAnswer = userInput.nextLine();

        boolean isSignUp = firstAnswer.equals("y") || firstAnswer.equals("Y");

        if (isSignUp) {
            System.out.print("Set your Username: ");
            String setUsername = userInput.nextLine();

            boolean isTaken = (users.contains(setUsername));

            while (isTaken) {
                System.out.println("Username already taken, enter a new Username");

                System.out.print("Set your Username: ");
                setUsername = userInput.nextLine();

                if (!users.contains(setUsername)) {
                    break;
                }
            }
            users.add(setUsername);

            System.out.print("Set your Password: ");
            String setPassword = userInput.nextLine();

            System.out.print("Year of birth: ");
            int setAge = userInput.nextInt();
            userInput.nextLine();

            userName = setUsername;
            age = setAge - 2025;
            password = setPassword;
        }

        Users player = new Users(userName, password, Math.abs(age), userId, height);

        System.out.print("Log in [y/n]: ");
        String secondAnswer = userInput.nextLine();

        boolean isLogin = secondAnswer.equals("y") || secondAnswer.equals("Y");

        if (isLogin) { // This is easily exploitable but I'm just learning this language
            System.out.print("Enter Username: ");
            String enteredUserName = userInput.nextLine();

            System.out.print("Enter Password: ");
            String enteredPassword = userInput.nextLine();

            boolean dataMatches = (enteredUserName.equals(player.getUsername()) && enteredPassword.equals(player.getPassword()));

            if (enteredUserName.equals(player.getUsername()) && enteredPassword.equals(player.getPassword()) && users.contains(userName) && dataMatches) {
                System.out.println("\nYou are logined in!\n");

                player.printUser();
                player.printAge();
                player.printUserId();

                while (true) {
                    System.out.print("\nType a command: ");
                    String command = userInput.nextLine();

                    switch (command) {
                        case "exit":
                            System.out.println("\nKilling Task");
                            System.exit(0);
                            break;
                        case "change password":
                            System.out.print("Enter Current Password: ");
                            String oldPass = userInput.nextLine();

                            if (oldPass.equals(player.getPassword())) {
                                System.out.print("Enter New Pass");
                                player.setPassword(userInput.nextLine());
                            }
                            break;
                        case "change username":
                            System.out.print("Enter New Username: ");
                            player.setUsername(userInput.nextLine());
                            break;
                        case "change height":
                            System.out.print("Enter New Height: ");
                            player.setHeight(userInput.nextInt());
                            break;
                        case "change age":
                            System.out.print("Enter New Age: ");
                            player.setAge(userInput.nextInt());
                            break;
                        case "add height":
                            player.monoHeight();
                            player.printHeight();
                            break;
                        case "minus height":
                            player.minusHeight();
                            player.printHeight();
                            break;
                        case "minus age":
                            player.minusAge();
                            player.printAge();
                            break;
                        case "add age":
                            player.monoAge();
                            player.printAge();
                            break;
                        default:
                            System.out.println("Invalid command");
                    }
                }

            } else if (!(users.contains(userName))) {
                System.out.println("Account does not exist!");
            } else if (!(dataMatches)) {
                System.out.println("Username or Password does not match!");
            }
        }
    }
}

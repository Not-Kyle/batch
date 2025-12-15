import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner UserInput;
        UserInput = new Scanner(System.in);

        while (true) {
            System.out.println("Type a command: ");
            String Input = UserInput.nextLine();

            switch (Input) {
                case "/help":
                    String Help = "/exit";
                    System.out.println(Help);
                    break;
                case "/exit":
                    System.out.println("\nKilling Task");
                    System.exit(0);
                    break;
                default:
                    System.out.println("Invalid");
            }
        }
    }
}

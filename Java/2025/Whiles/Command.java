import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        while (true) {
            System.out.println("Type a command");
            String input = userInput.nextLine();

            if (input.equals("/exit")) {
                break;
            } else if (input.equals("/help")) {
                String help = """
                     /help
                     /queue
                     /exit
                """;

                System.out.println(help);
            }
        }

        System.out.println("mawborn.jar");
    }
}

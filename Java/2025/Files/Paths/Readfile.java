import java.util.Scanner;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) {
        String fileName = "nocom.txt";

        try (Scanner userInput = new Scanner(Paths.get(fileName))) {

            while (userInput.hasNextLine()) {
                String line = userInput.nextLine();
                System.out.println(line);
            }
        } catch (Exception e) {
            System.out.println("Could not find file" + e.getMessage());
        }
    }
}

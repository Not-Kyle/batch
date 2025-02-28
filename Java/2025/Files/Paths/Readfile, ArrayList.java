import java.util.Scanner;
import java.nio.file.Paths;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> dataFromFile = new ArrayList<>();
        String fileName = "nocom.txt";

        try (Scanner userInput = new Scanner(Paths.get(fileName))) {

            while (userInput.hasNextLine()) {
                dataFromFile.add(userInput.nextLine());
            }
        } catch (Exception e) {
            System.out.println("Could not find file" + e.getMessage());
        }

        for (String data : dataFromFile) {
            System.out.println(data);
        }

        System.out.println("Total lines: " + dataFromFile.size());
    }
}

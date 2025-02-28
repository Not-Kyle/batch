import java.io.FileWriter;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        String osName = System.getProperty("user.name");

        try(FileWriter file = new FileWriter("C:\\Users\\" + osName + "\\Desktop\\nocom.java")) {
            file.write("NOCOM.JAR");
            System.out.println("NOCOM.JAR was written to file");
        } catch (IOException e) {
            System.out.println("Could not write file: " + e.getMessage());
        }
    }
}

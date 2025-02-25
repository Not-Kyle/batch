import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        float[] data = new float[5];
        data[0] = 45;
        data[1] = 65;
        data[2] = 75;

        float saveValueOf0 = data[0];
        data[0] = data[1];
        data[1] = saveValueOf0;

        System.out.println("Your data: " + data[0]);
    }
}

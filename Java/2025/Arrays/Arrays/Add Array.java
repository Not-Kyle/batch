import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        float[] data = new float[5];
        data[0] = 45;
        data[1] = 65;
        data[2] = 75;

        System.out.print("Enter the number you received: ");
        data[3] = Float.valueOf(userInput.nextFloat());

        System.out.println("Your data: " + data[3]);
    }
}

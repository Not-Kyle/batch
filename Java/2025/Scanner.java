import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);

        System.out.println("Port: ");
        String portEntree = userInput.nextLine();
        System.out.println("Port Entree " + portEntree);
    }
}

/*
Output: 
Port: 
443
Port Entree 443
*/

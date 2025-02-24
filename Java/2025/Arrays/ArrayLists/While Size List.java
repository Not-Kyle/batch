import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<String> network = new ArrayList<>();
        network.add("[ERROR]");
        network.add("[ERROR]");
        network.add("[ERROR]");

        int networkSize = 0;
        int sizeOfNetwork = network.size();

        while (networkSize < sizeOfNetwork) {
            System.out.println(network.get(networkSize)); // Prints out all items of the array
            networkSize++; // Holds the value of 3
        }
    }
}

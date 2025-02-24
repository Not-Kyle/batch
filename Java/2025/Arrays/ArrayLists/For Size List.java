import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<String> network = new ArrayList<>();
        network.add("[ERROR]");
        network.add("[ERROR]");
        network.add("[ERROR]");

        for (int index = 0; index < network.size(); index++) {
            sout(network.get(index));
        }
    }

    public static void sout(String message) {
        System.out.println(message);
    }
}

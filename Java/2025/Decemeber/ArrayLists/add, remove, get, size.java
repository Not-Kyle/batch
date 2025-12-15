import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> Network;
        Network = new ArrayList<>();

        Network.add("Error 302");
        Network.add("Error 264");

        if (Network.contains("Error 303")) {
            Print("Bad Error");
            return;
        }

        String FirstError = Network.get(0);
        String SecondError = String.valueOf(Network.size());
        int ErrorCounter = Integer.parseInt(SecondError);

        if (ErrorCounter != 2) {
            Print("Failure to index Counter");
            return;
        }

        /*for (int Index = 0; Index < Network.size(); Index++) {
            Print(Network.get(Index));
        }*/

        Print(FirstError); Print(String.valueOf(SecondError));
    }

    public static void Print(String Message) {
        System.out.println(Message);
    }
}

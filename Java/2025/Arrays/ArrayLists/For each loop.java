import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();
        list.add("A");
        list.add("B");
        list.add("C");
        list.add("D");

        for (String index : list) { // For each loop
            System.out.println(index); // Prints all the items in the array
        }
    }
}

// Purpose of this is if you do not need to keep track of the list of values

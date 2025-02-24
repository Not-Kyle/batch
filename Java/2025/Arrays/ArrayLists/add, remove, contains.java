import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();
        list.add("A");
        list.add("B");
        list.add("C");
        list.add("D");

        list.remove(1); // Removes B and C takes the position of B
        list.remove(String.valueOf("D")); // Removes D
        
        boolean hasC = list.contains("C"); // Searches for the value of C

        System.out.println(list.get(3)); // Errors because D is no longer a thing
        
        if (hasC) { // or list.contains("C")
            System.out.println("Contains C");
        }
    }
}

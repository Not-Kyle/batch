import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Integer> values = new ArrayList<>();
        values.add(10);
        values.add(5);
        values.add(9);
        values.add(6);

        int getZero = values.get(0); // Grabs the first value
        int sizeOfValues = values.size(); // Size of the array

        for (int index = 0; index < sizeOfValues; index++) {
            int getValues = values.get(index); // Gets all the values

            if (getZero > getValues) { // value 0 greater than getValues
                getZero = getValues; // getValues now holds the value of 5
            }
        }

        System.out.println("The smallest number is " + getZero);
    }
}

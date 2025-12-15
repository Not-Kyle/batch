import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<People> people;
        people = new ArrayList<>();

        People myself = new People("mawborn", 18, 0); // 0 to test that it will default to 1

        myself.printName();

        people.add(myself);
        people.add(new People("John", 18, 2));
        people.add(new People("crazyhacker53", 16, 3));

        for (People peoples: people) {
            print(String.valueOf(peoples));
        }
    }

    public static void print(String message) {
        System.out.println(message);
    }
}

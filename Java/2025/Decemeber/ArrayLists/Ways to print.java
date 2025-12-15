import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> names;
        names = new ArrayList<>();

        names.add("hellokittysouljia");
        names.add("mawborn");
        names.add("nocom.cc");
        names.add("mawborn.xml");
        names.add("Souljias");

        // or

        String script = "Slopmax.jar";
        names.add(script);

        // There are three ways to print out ArrayLists

        // 1 While loop
        int index = 0;
        while (index < names.size()) {
            print(names.get(index));
            index = index + 1;
        }

        // 2 for looping with index
        for (int indexs = 0; indexs < names.size(); indexs++) {
            print(names.get(indexs));
        }

        // 3 for each loop
        for (String name: names) {
            print(name);
        }
    }

    public static void print(String message) {
        System.out.println(message);
    }
}

public class Main {
    public static void main(String[] args) {
        String text = "My name is Cory";
        System.out.println(text.split(" ")[0]); // Prints My, each number you put represents the word
    }
}

// For Each Loop

public class Main {
    public static void main(String[] args) {
        String text = "My name is Cory";
        String[] textElements = text.split(" ");

        for (String element : textElements) {
            System.out.println(element);
        }
    }
}

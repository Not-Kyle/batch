public class Main {
    public static void main(String[] arg) {
        varExamples();
    }

    public static void varExamples() {
        var x = 4; // Defaults to int
        var y = 6.4f; // Defaults to float
        var z = 8.65; // Defaults to long

        var isOn = false; // Defaults to boolean
        var c = 'c'; // Defaults to char

        var name = "example"; // Defaults to string

        print("X-AXIS: " + String.valueOf(x) + "\nIsOn: " + String.valueOf(isOn));
    }

    public static void print(String message) {
        System.out.println(message);
    }
}

/*
The var keyword can only be used in methods, and will default to its variable based on the specific value given

Why does it exist? It makes cleaner code
*/

public class Main {
   static void hook() { // Function called hook()
      int x = 5;
      float y = (float) x;
      System.out.println(y);
   }
   public static void main(String[] args) {
      hook(); // Calling the function
   }
}
/*
Static: This keyword means the function belongs to the Main class and is not an object of the Main class
Void: This keyword means the function does not have a return value
*/
public class Water {
    static void hookfunction(String newcclosure) {
        System.out.println("syn" + newcclosure);
    }
    static void Command(String x, int y) {
        System.out.println(x + y);
    }
    public static void main(String[] args) {
        String Dot = "."
        String s1 = Dot + "request";
        String s2 = Dot + "protect_gui";
        hookfunction(s1); // Prints syn.request
        hookfunction(s2); // Prints syn.protect_gui
        //
        Command("Cory, ", 18); // Prints Cory 18
    }
}

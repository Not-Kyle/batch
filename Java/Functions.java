public class Main {
   static void Hook() { // Function called hook()
      int x = 5;
      float y = (float) x;
      System.out.println(y);
   }
   public static void main(String[] args) {
      Hook(); // Calling the function
   }
}
/*
Static: This keyword means the function belongs to the Main class and is not an object of the Main class
Void: This keyword means the function does not have a return value
*/
// Parameters
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
// Add-ons
public class Func {
    boolean Access = false;

    static void AdminCheck(String Perms) {
        String[] Names = {"Cory", "Aurora", "hellokittysouljia"};
        if (Perms == Names[0] || Perms == Names[1] || Perms == Names[2]) {
            Access = true;
        } else {
            Access = false;
        }
    }
    public static void main(String[] args) {
        AdminCheck();
        if (Access == true) {
            System.out.println("Access!");
        } elseif (Access == false) {
            System.out.println("Denied!")
        } else {
            return null;
        }
    }
}

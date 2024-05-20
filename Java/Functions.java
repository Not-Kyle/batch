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
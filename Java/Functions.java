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
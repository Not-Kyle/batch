public class B {
   public static void main(String[] args) {
      for (short Maps = 0; Maps < 10; Maps++) {
         if (Maps = 10) {
            break; //Stops the loop when the variable is equal to 10
         }
       System.out.println(Maps);
      }
   }
   public static void others() {
      for (short Exile = 0; Exile < 10; Exile++) {
         if (Exile == 5) {
            continue;
         }
         System.out.println(Exile);
      }
   }
}

public class A {
   public static void extra() {
      int Velocity = 0;
      while (Velocity < 5) {
         System.out.println(Velocity);
         Velocity++
         if (Velocity == 5) {
            break; // Breaks when the value is five
         }
      }
   }
   public static void more() {
      float Speed = 4.87f;
      int M1 = (int) Speed; //Narrow Casting
      while (M1 < 6) {
         System.out.println(M1);
         M1++
         if (M1 == 6) {
            continue; //Skips over six
         }
      }
   }
}
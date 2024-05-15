public class Random {
  // Widening Casting
  public static void main(String[] args) {
    int m1 = 8; // prints 8
    double m2 = m1; // prints 8.0
      System.out.println(m2);
  }
  // Narrow Casting
  public static void other(String[] args) {
    double m3 = 8.23; // prints 8.23
    int m4 = (int) m3; // prints 8
       System.out.println(m4);
  }
}

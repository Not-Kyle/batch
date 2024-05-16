class A {
    private String random = "Hi";
}
public class test {
    public static void main(String[] args) {
        byte r = 1;
        char g = 'g';
        for (;i < 2;) {
            System.out.println(g + r); //going to print g1 two times
        }
    }
    public static void other(String[] args) {
        for (i = 0; i < 6; i++) {
            A a=new A(); 
            System.out.println(a.random); //going to print nothing since it can not define the private keyword in line two
        }
    }
}

// Add-ons (May 16, 2024)
public class b {
   public static void extra() {
      for (int x = 3; x < 7; x++) {
         System.out.println(x)
         for (short y = 4; y < 7; y++) {
            System.out.println(y);
         }
      }
   }
}

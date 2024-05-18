public class arrays {
  public static void main(String[] args) {
    int[] array; int array = new int[7];
    System.out.println(array.length); // prints out the length of the array
  }
  public static void main(String[] arg) {
    array[0] = 3; //just like js, arrays start at 0
    array[1] = array[0] + 3;
    for (int t=0; i < array.length; i++) {
      System.out.println(array[i]); //arrays cant be printed out alone so create a loop
    }
  }
}

/**
Add-ons (May 17, 2024)
For-Each loop
*/
public class A {
  public static void main(String[] args) {
     String[] File = {"batch", "7z", "AES-256", "exe", "Hash"};
     for (String x : File) {
       System.out.println(x);
     }
   }
}

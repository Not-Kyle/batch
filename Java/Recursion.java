public class Func {
  public static void main(String[] args) {
    int wiker = sematary(7);
    System.out.println(wiker); // Outputs 28;
  }
  public static int sematary(int start) {
    if (start > 0) {
      return start + sematary(start - 1); // Change the plus to any symbol (*, %, /, +, -, etc)
    } else {
      return 0;
    }
  }
}
// Recursion will basically add every number between 7, so
// 0+1+2+3+4+5+6+7 = 28

public class Yes {
 public static void main(String[] args) {
  byte b1 = 1; //bytes
  short b2 = 2; //bytes
  int b4 = 4; //bytes
  long b8 = 8; //bytes
  float f4 = 3.99f; // four bytes 
  double d8 = 7.99; // eight bytes
  boolean bit1 = true; // one bit
  char c2 = 'c'; // two bytes
  String s1 = b1 + " " + b2 + " " + b4 + " " + b8 + " " + f4 + " " + d8 + " " + bit1 + " " + c2);
  System.out.println(s1);
 }
}

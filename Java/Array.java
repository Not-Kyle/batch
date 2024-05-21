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

/*
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

/*
Add-ons (May 19, 2024)
*/

public class Func {
	static void One() {
        int[] Stats = {7, 10, 3, 11, 6};
        for (int y : Stats) { // This is a For-Each loop
            System.out.println(y); // Prints out all of the properties
        }
    }

    static void Two() {
        int[][] Criteria = { {7, 10, 3, 11, 6}, {2, 3, 4, 2} };
        System.out.println(Criteria[1][1]); // Going to print out 3, First Number is the row, second number is the location
    }

	public static void main(String[] args) {
        String[] Settings = {"Velocity", "Speed", "Movement", "Range", "Rotation"};
        for (short x = 0; x < Settings.length; x++) {
            System.out.println(Settings[x]); // Prints out all of the properties
        }

        One();
        Two();
    }
}

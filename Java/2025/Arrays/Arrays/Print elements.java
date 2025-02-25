public class Main {
    public static void main(String[] args) {
        
        float[] data = new float[3]; // 3 will determine the number that data.length outputs
        data[0] = 45;
        data[1] = 65;
        data[2] = 75;

        for (int index = 0; index < data.length; index++) {
            System.out.println(data[index]); // Prints out all the elements of data
        }

        System.out.print("Data value: " + data.length); // The number of elements
    }
}

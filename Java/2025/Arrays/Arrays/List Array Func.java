public class Main {
    public static void main(String[] args) {

        float[] data = {5, 4, 7, 2, 3};

        listArray(data);
        System.out.print("Data Value: " + data.length); // The number of elements
    }

    public static void listArray(float[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.println("Data: " + array[i]);
        }
    }
}

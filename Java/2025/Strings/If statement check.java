public class Main {
    public static void main(String[] args) {
        String[] data = {"Cory", "Mawborn"};
        String dataOne = data[1];
        boolean isDataOne = dataOne.equals("mawborn"); // Doesn't match up with data[1]

        if (!(isDataOne)) { // If not Mawborn (data[1])
            System.out.println("Wrong data");
        } else {
            System.out.println("Correct");
        }
    }
}

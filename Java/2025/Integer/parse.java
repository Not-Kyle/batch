public class Main {
    public static void main(String[] args) {
        String ints = "57";
        String floats = "3.14";
        String booleans = "true";

        int value = Integer.parseInt(ints);
        System.out.println(value);

        float value2 = Float.parseFloat(floats);
        System.out.println(value2);

        boolean value3 = Boolean.parseBoolean(booleans);
        System.out.println(value3);
    }
}

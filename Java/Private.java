//CONTEXT: Making the private function write() accessable from another class
class B {
    private void write() {
        long m1 = "junk"
        System.out.println(m1);
    }
}

public class Main {
    public static void main(String[] args) {
        Class priv = Class.forName("B");
        Object pub = priv.newInstance();
        Method inv = priv.getDeclaredMethod("write", null);
        inv.setAccessible(true);
        inv.invoke(pub, null);
    }
}

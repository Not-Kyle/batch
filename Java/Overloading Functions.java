public class Func {
	static float Met(float x, float y) {
		return x * y;
	}
	// Not part of overloading funcs
	static double Func(double x, double y) {
		return x / y;
	}
	static int Func(int x, int y) {
		return x / y;
	}
	public static void main(String[] args) {
		float z = Met(9.32f, 4.83f);
		double N1 = Func(11.1, 99.9);
		int N2 = Func(99, 11);
		System.out.println(z); // Outputs 45.0156
		System.out.println(N1); // Outputs 0.1111
		System.out.println(N2); // Outputs 9
	}
}

import java.util.Objects;

public class People extends Main {

    private String name;
    private int age;
    private int id;

    public People(String name, int age, int id) {
        this.name = Objects.requireNonNullElse(name, "Unknown"); // Name or "Unknown" (If name is null then switch to Unknown)

        if (age < 0 || id < 0) {
            throw new IllegalArgumentException("Integers must be positive"); // This is better than sout() return, IllegalArgumentException will completely stop the code, while return will let the code keep running silently.
        }

        this.age = age;
        this.id = (id == 0) ? 1 : id;
    }

    @Override // Override looks complex in books but is very simple, all it does it override the default Java functions
    public String toString() {
        return "Name: " + name + "\nAge: " + age + "\nId: " + id + "\n";
    }

    public String indexName() {
        return this.name;
    }

    public int indexAge() {
        return this.age;
    }

    public int indexId() {
        return this.id;
    }

    public void printName(String message) {
        super.print("Name: " + this.name + (message == null ? "\n" : message));
    } // Super is calling the superclass in this case (Main), searching for a print function inside of the super class

    public void printName() {
        printName(""); // If I do not want any paramaters then this one will trigger, if I do then the other one will trigger
    }

    public void printAge() {
        super.print("Age: " + this.age);
    }

    public void printId() {
        super.print("Id: " + this.id);
    }
}

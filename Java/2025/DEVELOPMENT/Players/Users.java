public class Users {
    private String username;
    private int age;
    private int userId;

    public String getName() {
        return this.username;
    }

    public int getAge() {
        return this.age;
    }

    public int getUserId() {
        return this.userId;
    }

    public Users(String username, int age, int userId) {
        this.username = username;
        this.age = age;
        this.userId = userId;
    }

    public void printUser() {
        System.out.println("Username: " + this.username);
    }

    public void printAge() {
        System.out.println("Age: " + this.age);
    }

    public void printUserId() {
        System.out.println("UserId: " + this.userId);
    }
}

public class Users {
    private String username;
    private String password;
    private int age;
    private int userId;
    private int height;

    public Users(String name, String pass, int age, int userId, int height) {
        this.username = name;
        this.password = pass;
        this.age = age;
        this.userId = userId;
        this.height = height;
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public int getAge() {
        return this.age;
    }

    public int getUserId() {
        return this.userId;
    }

    public int getHeight() {
        return this.height;
    }

    public void monoHeight() {
        this.height += 1;
    }

    public void minusHeight() {
        this.height -= 1;
    }

    public void monoAge() {
        this.age += 1;
    }

    public void minusAge() {
        this.age -= 1;
    }

    public void setUsername(String newUser) {
        this.username = newUser;
    }

    public void setPassword(String newPass) {
        this.password = newPass;
    }

    public void setAge(int newAge) {
        this.age = newAge;
    }

    public void setUserId(int newUserId) {
        this.userId = newUserId;
    }

    public void setHeight(int newHeight) {
        this.height = newHeight;
    }

    public void setHeightByAge() {
        for (int index = 0; index < this.age; index += 0.3) {
            this.height = index;
        }
    }

    public void printUser() {
        System.out.println("Username: " + this.username);
    }

    public void printPassword() {
        System.out.println("Password: " + this.password);
    }

    public void printAge() {
        System.out.println("Age: " + this.age);
    }

    public void printUserId() {
        System.out.println("UserId: " + this.userId);
    }

    public void printHeight() {
        System.out.println("Height: " + this.height);
    }

    public void printHeightByAge() {
        for (int index = 0; index < this.height; index += 0.3) {
            System.out.println("Height: " + index);
        }
    }
}

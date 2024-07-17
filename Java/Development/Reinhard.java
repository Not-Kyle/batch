import java.util.Arrays;

public class Reinhard {
    public static void main(String[] args) {
        String[] fileType = {"dll", "java"};
        String getFile, findFile;

        if (getFile == fileType[0]) {
            findFile = fileType[0];
        } else if (getFile == fileType[1]) {
            findFile = fileType[1];
        } else {
            System.out.println("Non-reconized file type");
        }

        boolean matchingFile = Arrays.stream(fileType).anyMatch(hookFile -> hookFile == getFile);
        
        if (matchingFile) {
            System.out.println("Reinhard" + findFile + " was found");
        } else {
            System.out.println("null");
        }
    }
}

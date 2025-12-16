public class Main {
    public static void main(String[] args) {
        Playlist list = new Playlist();

        list.addSong("Joji : I'LL SEE YOU IN 40");
        list.addSong("Joji : 1AM FREESTYLE");
        list.addSong("Sematary : BORN 2 LOSE");
        list.addSong("Joji : COME THRU");

        String sematary = list.getSong(2);
        list.removeSong(sematary);

        list.printSongs();
    }

    public static void print(String message) {
        System.out.println(message);
    }
}

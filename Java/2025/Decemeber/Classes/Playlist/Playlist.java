import java.util.ArrayList;

public class Playlist extends Main {
    private ArrayList<String> songs;

    public Playlist() {
        this.songs = new ArrayList<>();
    }

    public void addSong(String song) {
        this.songs.add(song);
    }

    public void removeSong(String song) {
        this.songs.remove(song);
    }

    public String getSong(int number) {
        return this.songs.get(number);
    }

    public void printSongs() {
        for (String song: this.songs) {
            super.print("Name: " + song);
        }
    }
}

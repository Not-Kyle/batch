import java.util.ArrayList;

public class Playlist {
    private ArrayList<String> songs;

    public Playlist() {
        this.songs = new ArrayList<>();
    }

    public void addSong(String track) {
        this.songs.add(track);
    }

    public void removeSong(String track) {
        this.songs.remove(track);
    }

    public void printSongs() {
        for (String index : this.songs) {
            System.out.println(index);
        }
    }

    public void deletePlaylist() {
        this.songs.clear();
    }
}

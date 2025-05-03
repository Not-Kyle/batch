public class Main {
    public static void main(String[] args) {
        Playlist tracks = new Playlist();
        tracks.addSong("Ghost Mountain, Stalks");
        tracks.addSong("Elusin, Synfuels Bonus CD Track 11");
        tracks.addSong("Ghost Mountain, Frozen Swimming Pool");
        tracks.addSong("Sematary, King Of The Graveyard");
        tracks.removeSong("Sematary, King Of The Graveyard");

        tracks.printSongs();
        tracks.deletePlaylist();
    }
}
// https://java-programming.mooc.fi/part-6/1-objects-within-objects

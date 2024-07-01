class Song {
  final String imagePath;
  final String songName;
  final String artistName;

  Song({
    required this.imagePath,
    required this.songName,
    required this.artistName,
  });
}

final List<Song> songs = [
  Song(
      imagePath: "lib/assets/drake.jpg",
      songName: "God's Plan",
      artistName: "Drake"),
  Song(
      imagePath: "lib/assets/hell.jpg",
      songName: "Hell",
      artistName: "Heaven's Demon"),
  Song(
      imagePath: "lib/assets/olivia1.jpg",
      songName: "Good 4 U",
      artistName: "Olivia Rodrigo"),
  Song(
      imagePath: "lib/assets/olivia2.jpg",
      songName: "Drivers License",
      artistName: "Olivia Rodrigo"),
  Song(
      imagePath: "lib/assets/weekend2.jpg",
      songName: "Blinding Lights",
      artistName: "The Weeknd"),
  Song(
      imagePath: "lib/assets/weeknd1.jpg",
      songName: "Save Your Tears",
      artistName: "The Weeknd"),
];
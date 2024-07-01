import 'package:flutter/material.dart';
import 'package:spotify_dribble/ dummy_data.dart';

// class Song {
//   final String imagePath;
//   final String songName;
//   final String artistName;
//
//   Song({
//     required this.imagePath,
//     required this.songName,
//     required this.artistName,
//   });
// }

class SquareTiles extends StatelessWidget {
  SquareTiles({super.key});

  // final List<Song> songs = [
  //   Song(
  //       imagePath: "lib/assets/drake.jpg",
  //       songName: "God's Plan",
  //       artistName: "Drake"),
  //   Song(
  //       imagePath: "lib/assets/hell.jpg",
  //       songName: "Hell",
  //       artistName: "Heaven's Demon"),
  //   Song(
  //       imagePath: "lib/assets/olivia1.jpg",
  //       songName: "Good 4 U",
  //       artistName: "Olivia Rodrigo"),
  //   Song(
  //       imagePath: "lib/assets/olivia2.jpg",
  //       songName: "Drivers License",
  //       artistName: "Olivia Rodrigo"),
  //   Song(
  //       imagePath: "lib/assets/weekend2.jpg",
  //       songName: "Blinding Lights",
  //       artistName: "The Weeknd"),
  //   Song(
  //       imagePath: "lib/assets/weekend1.jpg",
  //       songName: "Save Your Tears",
  //       artistName: "The Weeknd"),
  // ];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set a fixed height for the horizontal ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            width: 120, // Width of each tile
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [],
              image: DecorationImage(
                image: AssetImage(songs[index].imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songs[index].songName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        songs[index].artistName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
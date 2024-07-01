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

class circleAvatar extends StatelessWidget {
  circleAvatar({super.key});

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

  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the radius as needed
                  backgroundImage: AssetImage(songs[index].imagePath),
                  backgroundColor: Colors.transparent,
                ),
                if (index == selectedIndex) // If the song is being played
                  Column(
                    children: [
                      Container(
                        height: 2.0, // Height of the blue track
                        width: 30.0, // Width of the blue track
                        color: Colors.blue, // Color of the blue track
                      ),
                      Text(
                        songs[index].songName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        songs[index].artistName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
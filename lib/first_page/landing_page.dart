import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:spotify_dribble/first_page/landing_page.dart';
import 'package:spotify_dribble/config/colors.dart';
import 'package:spotify_dribble/first_page/square_tiles.dart';
import 'package:spotify_dribble/ dummy_data.dart';

import 'bottom_navigation.dart';
import 'circle_avatar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: [
            const Text("Hello, anxbrt",
                style: TextStyle(
                  color: greycolor,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
                onPressed: () => {}, icon: const Icon(Icons.notifications)),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Positioned.fill(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.27,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 107.0, sigmaY: 100),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(1, 1, 220, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "most",
                        style: TextStyle(
                            color: bluecolor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Popular",
                        style: TextStyle(
                            color: bluecolor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 270, 0),
                  child: Text(
                    " 80 Playlists",
                    style: TextStyle(
                        color: greycolor,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 200, // Fixed height for the SquareTiles
                  child: SquareTiles(),
                ),
                SizedBox(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Releases",
                        style: TextStyle(
                            color: bluecolor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    Text("3456 songs",
                        style: TextStyle(
                            color: greycolor,
                            fontSize: 20,
                            fontWeight: FontWeight.w300)),
                    SizedBox(height: 10),
                    circleAvatar(),
                    // Container(
                    //   height: 2.0, // Height of the blue marker line
                    //   width: 400.0, // Width of the blue marker line
                    //   color: Colors.grey, // Color of the blue marker line
                    // ),
                  ],
                ),
              ],
            ),
            //Container(child: SquareTiles()),
          ]),
        ),
        bottomNavigationBar: BottomNavigation(
          song: Song(
            imagePath: "lib/assets/drake.jpg",
            songName: "God's Plan",
            artistName: "Drake",
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class LandingPage extends StatelessWidget {
//   const LandingPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
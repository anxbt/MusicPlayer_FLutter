import 'package:flutter/material.dart';
import 'package:spotify_dribble/common_navbar.dart';

import 'glass_box.dart';
import 'package:spotify_dribble/first_page/landing_page.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: CommonNavbar(title: "Music Player", leadingIcon: Icons.menu),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LandingPage())),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/Sid Kiara.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: GlassBox()),
      ),
    );
  }
}
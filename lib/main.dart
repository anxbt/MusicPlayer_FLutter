import 'package:flutter/material.dart';
import 'package:spotify_dribble/api/data_model.dart';
import 'package:spotify_dribble/first_page/landing_page.dart';
import 'package:spotify_dribble/second_page/music_player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LandingPage());
  }
}
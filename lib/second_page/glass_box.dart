import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatefulWidget {
  const GlassBox({super.key});

  @override
  State<GlassBox> createState() => _GlassBoxState();
}

class _GlassBoxState extends State<GlassBox> {
  bool isPlaying = false;
  double currentTrackPosition = 5.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 500.0),
      child: ClipRect(
        // borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 200,
          width: 350,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(),
              ),

              //gradient effect
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Rataan Lambiyan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Shershaah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Slider(
                        value: currentTrackPosition,
                        max: 100,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white,
                        thumbColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            currentTrackPosition = value;
                            // Update the track position in the music player
                          });
                        },
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: const Icon(Icons.skip_previous,
                                    size: 50, color: Colors.white),
                                onPressed: () {}),
                            if (isPlaying)
                              IconButton(
                                icon: const Icon(Icons.pause,
                                    size: 50, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = false;
                                    // Handle pause action
                                  });
                                },
                              )
                            else
                              IconButton(
                                icon: const Icon(Icons.play_arrow,
                                    size: 50, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = true;
                                    // Handle play action
                                  });
                                },
                              ),
                            IconButton(
                              icon: const Icon(Icons.skip_next,
                                  size: 50, color: Colors.white),
                              onPressed: () {
                                // Handle skip next action
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
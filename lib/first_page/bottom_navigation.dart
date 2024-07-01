import 'package:flutter/material.dart';
import 'package:spotify_dribble/ dummy_data.dart';

class BottomNavigation extends StatefulWidget {
  final Song song;

  const BottomNavigation({super.key, required this.song});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to full-screen music player page
      },
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.song.imagePath),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.song.songName,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text(widget.song.artistName,
                            style: TextStyle(
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.pause, color: Colors.black, size: 30),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.skip_next_outlined,
                        color: Colors.black, size: 30),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Duration(seconds: _currentSliderValue.toInt())
                      .toString()
                      .split('.')[0]
                      .substring(2),
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 4,
                    ),
                    child: Slider(
                      value: _currentSliderValue,
                      max: 100,
                      min: 0,
                      inactiveColor: Colors.grey[500],
                      activeColor: Colors.black,
                      onChanged: (val) {
                        setState(() {
                          _currentSliderValue = val;
                        });
                      },
                    ),
                  ),
                ),
                Text(
                  Duration(seconds: 100)
                      .toString()
                      .split('.')[0]
                      .substring(2), // Replace 100 with the total song duration
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
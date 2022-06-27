// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  bool isplaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  int number = 5;
  void playsound(int number) {
    player.play(AssetSource('note$number.wav'));
  }

  Widget buildkey({required int number, required Color color}) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          playsound(number);
        },
        child: Ink(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildkey(color: Colors.red, number: 1),
                buildkey(color: Colors.orange, number: 2),
                buildkey(color: Colors.yellow, number: 3),
                buildkey(color: Colors.green, number: 4),
                buildkey(color: Colors.blue, number: 5),
                buildkey(color: Colors.purple, number: 6),
                buildkey(color: Colors.pink, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

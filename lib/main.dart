import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // here is function for play sound
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  // here is function

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.blueAccent, soundNumber: 1),
              buildKey(color: Colors.blueGrey, soundNumber: 2),
              buildKey(color: Colors.purple, soundNumber: 3),
              buildKey(color: Colors.pink, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.green, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

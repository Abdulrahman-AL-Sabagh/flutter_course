import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  void playSound(int num) {
    player.setVolume(0.2);
    player.play(
      AssetSource("note$num.wav"),
    );
  }

  Expanded buildKey(int num, Color color) => Expanded(
        child: Container(
          color: color,
          child: TextButton(
            onPressed: () {
              playSound(num);
            },
            child: const Text(""),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.blue),
                buildKey(5, Colors.green),
                buildKey(6, Colors.pink),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      );
}

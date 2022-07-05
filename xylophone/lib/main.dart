import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  void playSound(int num) {
    player.setVolume(0.2);
    player.play(
      AssetSource("note$num.wav"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlue,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue[900],
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },
                    child: const Text(""),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                    child: const Text(""),
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

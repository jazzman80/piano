import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Piano());
}

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    AudioCache player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildPianoKey(Color color, int noteNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildPianoKey(Colors.red, 1),
              buildPianoKey(Colors.orange, 2),
              buildPianoKey(Colors.yellow, 3),
              buildPianoKey(Colors.green, 4),
              buildPianoKey(Colors.cyan, 5),
              buildPianoKey(Colors.blue, 6),
              buildPianoKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

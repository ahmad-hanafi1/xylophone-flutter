import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playNote(String source) async {
      AudioCache.instance = AudioCache(prefix: '');
      final player = AudioPlayer();
      await player.play(AssetSource(source));
    }

    Widget BuildKey(Color color, String source) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
          ),
          child: Container(),
          onPressed: () {
            playNote(source);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            BuildKey(Colors.red, "assets/note1.wav"),
            BuildKey(Colors.orange, "assets/note2.wav"),
            BuildKey(Colors.yellow, "assets/note3.wav"),
            BuildKey(Colors.green, "assets/note4.wav"),
            BuildKey(Colors.teal, "assets/note5.wav"),
            BuildKey(Colors.blue, "assets/note6.wav"),
            BuildKey(Colors.purple, "assets/note7.wav"),
          ]),
        ),
      ),
    );
  }
}

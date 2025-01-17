import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget BuildKey(Color color, int sourceNumber) {
      void playNote() async {
        AudioCache.instance = AudioCache(prefix: '');
        final player = AudioPlayer();
        await player.play(AssetSource("assets/note$sourceNumber.wav"));
      }

      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
          ),
          child: Container(),
          onPressed: () {
            playNote();
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            BuildKey(Colors.red, 1),
            BuildKey(Colors.orange, 2),
            BuildKey(Colors.yellow, 3),
            BuildKey(Colors.green, 4),
            BuildKey(Colors.teal, 5),
            BuildKey(Colors.blue, 6),
            BuildKey(Colors.purple, 7),
          ]),
        ),
      ),
    );
  }
}

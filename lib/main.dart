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

    final player = AudioPlayer();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () {
                  playNote('assets/note1.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note2.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note3.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note4.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note5.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note6.wav');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(side: BorderSide(width: 0)),
                ),
                child: Container(),
                onPressed: () async {
                  playNote('assets/note7.wav');
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

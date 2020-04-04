import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playkro(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey({Color color, int soundno}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playkro(soundno);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundno: 1),
              buildkey(color: Colors.orange, soundno: 2),
              buildkey(color: Colors.yellow, soundno: 3),
              buildkey(color: Colors.green, soundno: 4),
              buildkey(color: Colors.teal, soundno: 5),
              buildkey(color: Colors.blue, soundno: 6),
              buildkey(color: Colors.purple, soundno: 7),
            ],
          ),
        ),
      ),
    );
  }
}

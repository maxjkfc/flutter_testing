import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: PlayerWidget(),
      ),
    ));

// ignore_for_file: prefer_const_constructors
class PlayerWidget extends StatefulWidget {
  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  void playSound(String soundName) {
    AudioCache player = AudioCache();
    player.play("$soundName");
  }

  Expanded buildKey(Color color, String soundName) {
    return Expanded(
      // color: Colors.red,
      child: TextButton(
        onPressed: () {
          playSound('$soundName');
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.red, "note1.wav"),
          buildKey(Colors.orange, 'note2.wav'),
          buildKey(Colors.yellow, 'note3.wav'),
          buildKey(Colors.green, 'note4.wav'),
          buildKey(Colors.teal, 'note5.wav'),
          buildKey(Colors.blue, 'note6.wav'),
          buildKey(Colors.purple, 'note7.wav'),
        ],
      ),
    );
  }
}

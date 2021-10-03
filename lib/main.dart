import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playLocalAudio(int audioState) {
    final player = AudioCache();
    player.play('note$audioState.wav');
  }

  Expanded buildKey(int audioState, Color color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playLocalAudio(audioState);
        },
        child: Text('Play Audio $audioState'),
        style: ElevatedButton.styleFrom(
          primary: color,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.grey),
                buildKey(3, Colors.blue),
                buildKey(4, Colors.green),
                buildKey(5, Colors.teal),
                buildKey(6, Colors.amber),
                buildKey(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int sound) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$sound.wav'),
    );
  }

  Expanded builtkey(int num, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          PlaySound(num);
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtkey(1, Colors.red),
              builtkey(2, Colors.orange),
              builtkey(3, Colors.yellow),
              builtkey(4, Colors.green),
              builtkey(5, Colors.blue),
              builtkey(6, Colors.indigo),
              builtkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

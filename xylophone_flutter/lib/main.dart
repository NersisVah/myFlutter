import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audioplayer.dart';

void main() {
  runApp(    XylophoneApp(),  );
}


class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Widget buildKey({int? numberSound, Color? color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          child: SizedBox(),
          onPressed: () {
            playSound(numberSound!);
            },
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(numberSound:1, color:Colors.red),
              buildKey(numberSound:2, color:Colors.orange),
              buildKey(numberSound:3, color:Colors.yellowAccent),
              buildKey(numberSound:4, color:Colors.green),
              buildKey(numberSound:5, color:Colors.teal),
              buildKey(numberSound:6, color:Colors.blue),
              buildKey(numberSound:7, color:Colors.purple),
              // buildKey(2, Colors.orange),
              // buildKey(3, Colors.yellowAccent),
              // buildKey(4, Colors.green),
              // buildKey(5, Colors.teal),
              // buildKey(6, Colors.blue),
              // buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

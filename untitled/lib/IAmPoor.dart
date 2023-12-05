import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: Center(
            child: Text('I Am Poor'),
          ),
        ),
        body:
        Center(
          child: Image(
            image: AssetImage('images/coall.jpeg') ,
          ),
        ),
      ),
    ),
  );
}

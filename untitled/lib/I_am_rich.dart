import 'package:flutter/material.dart';

// The main function is the starting points for all our Flutter apps.
void main() {
  String string = "I Am Rich";
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          string,
        ),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/diamond.jpeg'),
        ),
      ),
    ),
  ),
  );
}

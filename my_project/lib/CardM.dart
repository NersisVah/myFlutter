import 'package:flutter/material.dart';

void main() {
  MyCardApp app = new MyCardApp();
  runApp(app);
}

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  // backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/Angela.jpeg'),
                ),
                Text(
                  'Angela Yu',
                  style: TextStyle(
                    // fontFamily: 'Zeyada',
                    fontFamily: 'Courgette',
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    // fontFamily: Font,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SCP',
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 15),
                  width: 150,
                  height: 1,
                  color: Colors.white,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.call,
                          color: Colors.teal,
                        ),
                        margin: EdgeInsets.only(left: 10, right: 30),
                      ),
                      Text(
                        '+44 123 4567 8901',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          letterSpacing: 2,

                        ),
                      ),
                    ],
                  ),
                  width: 350,
                  height: 50,
                  color: Colors.white,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.mail,
                          color: Colors.teal,
                        ),
                        margin: EdgeInsets.only(left: 10, right: 30),
                      ),
                      Container(
                        child: Text(
                          'angela@mail.com',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 15),
                  width: 350,
                  height: 50,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

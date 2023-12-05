import 'package:flutter/material.dart';

void main() {
  MyCardApp app = MyCardApp();
  runApp(app);
}

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
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
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                color: Colors.white,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20,

                    ),
                    Text(
                        '+44 123 456 789 101',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SCP',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                        Icons.mail,
                      color: Colors.teal,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'angela@mail.com',
                      style: TextStyle(
                        fontFamily: 'SCP',
                        color: Colors.teal.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    )

                  ],
                ),
              )

              // ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

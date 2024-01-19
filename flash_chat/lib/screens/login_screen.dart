import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/loading_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;
  bool boolCal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlurryModalProgressHUD(
        inAsyncCall: boolCal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              Hero(
                tag: 'login',
                child: RoundedButton(
                  onPressed: () async {
                    setState(() async{
                      boolCal = true;
                      setState(() {});
                      if (email != null || password != null) {
                        try{
                          final userCre = await _auth
                              .signInWithEmailAndPassword(
                              email: email!, password: password!);
                          boolCal = false;
                          setState(() {});
                          if(userCre != null){
                            Navigator.pushNamed(context, ChatScreen.id);
                          }
                        }catch(e){
                          print('==================================================');
                          print(e);
                          print('==================================================');
                        }
                      }

                    });
                  },
                  title: 'Log In',
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

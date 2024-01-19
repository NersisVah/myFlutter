import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = '/registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;
  bool? showingSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlurryModalProgressHUD(
        color: Colors.grey,
        opacity: 0.6,
        progressIndicator: CircularProgressIndicator(color: Colors.blueAccent, strokeWidth: 6.0,),
        inAsyncCall: showingSpinner,
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
                textAlign: TextAlign.center,
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
                textAlign: TextAlign.center,
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
                tag: 'register',
                child: RoundedButton(
                  onPressed: () async {
                    if (email != null || password != null) {
                      try {

                          setState(() {
                            showingSpinner = true;
                          });
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email!, password: password!);
                          setState(() {
                            showingSpinner = false;
                          });

                        if(newUser != null){
                          Navigator.pushNamed(context, ChatScreen.id);

                        }
                      } catch (er) {
                        showDialog(context: context, builder: (context) => AlertDialog(title: Text(er.toString(),textAlign: TextAlign.center,),),);
                        setState((){
                          showingSpinner = false;
                        });
                      }
                    }
                    // print(email);
                    // print(password);
                  },
                  title: 'Register',
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

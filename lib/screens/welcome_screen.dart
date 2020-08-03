import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
//  AnimationController controller;
//
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//      duration: Duration(seconds: 1),
//      vsync:
//    );
//  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ([
//              Color(0xff74f9ff),
//              Color(0xffb4f1f1),
//              Color(0xffe2f3f5),
//              Color(0xffecfffb),
//              Colors.white
              Color(0xffaaa9f5),
              Colors.white,
              Color(0xfffacdd7)
            ]),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: 60.0,
                    ),
                  ),
                  Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
//                color: Color(0xffa6acec),
                  color: Color(0xfffcb1b1),
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
//                color: Color(0xffa56cc1),
                  color: Color(0xffcaa5f1),
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

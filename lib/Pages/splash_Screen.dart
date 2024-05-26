import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, '/LoginSignUp'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'image/logo.png',
                    height: 126,
                    width: 128,
                  ),
                ),
                Container(
                  child: Text(
                    'Splitwise',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontFamily: 'Lato',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text('Split bills the easy way'),
          ),
        ],
      ),
    );
  }
}

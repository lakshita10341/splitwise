

import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/Login.dart';
import 'Pages/LoginSignUpScreen.dart';
import 'Pages/SignUp.dart';
import 'Pages/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplitWise',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/Login': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/LoginSignUp': (context)=> const LoginSignUpScreen(),
        '/HomePage': (context) => const HomePage(),
      },
    );
  }
}







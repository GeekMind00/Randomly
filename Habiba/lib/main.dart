import 'package:flutter/material.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/login.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Home(),
      routes: {
        "login" : (context) {
          return LogIn();
        },
        "home" : (context) {
          return Home();
        },
        "signup" : (context) {
          return SignUp();
        },
      },
    );
  }
}


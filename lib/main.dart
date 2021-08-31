import 'package:flutter/material.dart';
import 'package:randomNumbersApp/screens/home.dart';
import 'screens/login.dart';
import 'screens/sign_up.dart';
import 'screens/Splash.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Start of Project
        debugShowCheckedModeBanner: false,
        title: "Randomly",
        home: Splash(), // first page of app
        //End of project
        routes: {
          "login": (context) {
            return Login();
          },
          "sign_up": (context) {
            return Signup();
          },
          "home": (context) {
            return Home();
          },
        });
  }
}

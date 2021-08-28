

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/sign_up.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      //Start of Project
      title: "Mobtech",
      home: Home(), // first page of app
      //End of project 
      routes: {
        "home" : (context){
          return Home();
        },
        "sign_up" : (context){
          return Signup();
        } 
      },
      
    );
  }
}
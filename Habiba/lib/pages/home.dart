import 'dart:html';
import '../components/mydrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return HomeState() ;
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          backgroundColor: Colors.blue,
          /* actions: <Widget>[
            IconButton(icon: Icon(Icons.login_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_box),onPressed: () {})
          ], */
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.search), onPressed: (){},),
        ),
        endDrawer: MyDrawer(),
      );
  }
}
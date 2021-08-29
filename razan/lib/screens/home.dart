
import 'package:test/components/button.dart';

import '../components/mydrawer.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.red,
        /* actions: <Widget>[
            IconButton(icon: Icon(Icons.login_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_box),onPressed: () {})
          ], */
        centerTitle: true,
        
      ),
      endDrawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Button('Generate',(){})
          ],
        ),
        
        
      ),
    );
  }
}

import 'package:test/components/button.dart';

import '../components/mydrawer.dart';

import 'package:flutter/material.dart';
import '../components/inputtext.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController searchNumber = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Color(0xff23449d),
        /* actions: <Widget>[
            IconButton(icon: Icon(Icons.login_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_box),onPressed: () {})
          ], */
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 40, 20, 40),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            buildSearchField(searchNumber),
            SizedBox(
              height: 40,
            ),
            Button('Search', () {}),
            SizedBox(
              height: 40,
            ),
            Button('Generate', () {}),
            SizedBox(
              height: 40,
            ),
            Button('Export', () {})
          ],
        ),
      ),
    );
  }
}

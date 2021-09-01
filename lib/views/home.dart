import 'dart:io';
import 'dart:async';

import 'package:randomNumbersApp/components/button.dart';

import '../components/mydrawer.dart';
import '../core/Numbers.dart';
import 'package:flutter/material.dart';
import '../components/inputtext.dart';
import '../components/export.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'dart:math';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController searchNumber = new TextEditingController();
  Numbers number = new Numbers();

  /*  Future<String> _getDirPath() async {
    final _dir = await getApplicationSupportDirectory();
    return _dir.path;
  }

  Future<void> _writeData() async {
    final _dirPath = await _getDirPath();
    final _myFile = File('$_dirPath/data.txt');
    await _myFile.writeAsString(numbersList.toString());
  } */

  popUp(int found) {
    //var validator = true;
    return showDialog(
        context: context,
        builder: (context) {
          if (found != -1) {
            return AlertDialog(
              content: Text("FOUND"),
              actions: <Widget>[
                Button("ok", () {
                  Navigator.of(context).pop();
                })
              ],
            );
          } else {
            return AlertDialog(
              content: Text("NOT FOUND"),
              actions: <Widget>[
                Button("ok", () {
                  Navigator.of(context).pop();
                })
              ],
            );
          }
        });
  }

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
            Button('Search', () {
              int found = number.search(int.parse(searchNumber.text));
              //if (found == -1) print("not found");
              popUp(found);
            }),
            SizedBox(
              height: 40,
            ),
            Button('Generate', () {
              number.generateRandomNumber();
              print(number.numbersList[0]);
            }),
            SizedBox(
              height: 40,
            ),
            Button('Export', () async {
              final pdfFile =
                  await Pdf.generateCenteredText(number.numbersList.toString());
              Pdf.openFile(pdfFile);
            })
          ],
        ),
      ),
    );
  }
}

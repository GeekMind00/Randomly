import 'package:randomNumbersApp/components/button.dart';
import '../components/mydrawer.dart';
import '../core/Numbers.dart';
import 'package:flutter/material.dart';
import '../components/inputText.dart';
import '../components/export.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController searchNumber = new TextEditingController();
  Numbers number = new Numbers();

  showPopUp(int found) {
    return showDialog(
        context: context,
        builder: (context) {
          if (found != -1) {
            return AlertDialog(
              content: Text("Found"),
              actions: <Widget>[
                Button("Ok", () {
                  Navigator.of(context).pop();
                })
              ],
            );
          } else {
            return AlertDialog(
              content: Text("Not Found"),
              actions: <Widget>[
                Button("Ok", () {
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
              showPopUp(found);
            }),
            SizedBox(
              height: 40,
            ),
            Button('Generate', () {
              number.generateRandomNumber();
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

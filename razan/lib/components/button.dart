import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  /* const Button({
    Key key,
    this.text,
    //this.press,
  }) : super(key: key);
  final String text;
  final Function press; */
  @override 
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){},
        child: Text("LOGIN"),
      ),
    );
  }
}
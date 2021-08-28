


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  
  final String text;
  final Function press;
  const Button(this.text , this.press);
  
  @override 
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: (){},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        padding: EdgeInsetsDirectional.all(15),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        )
      )
      
      );
  }
  
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  
  final String text;
  final Function press;
  const Button(this.text , this.press);
  
  @override 
  Widget build(BuildContext context) {

    return ElevatedButton(
      
      onPressed: (){press();},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        
        primary: Color(0xff23449d),
        fixedSize: Size(10, 50),
        //padding: EdgeInsetsDirectional.all(25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        textStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold
        )
      )
      
      );
  }
  
}
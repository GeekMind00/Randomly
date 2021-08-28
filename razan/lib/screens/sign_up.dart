import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:flutter/widgets.dart';
import '../components/inputtext.dart';

class Signup extends StatelessWidget {
  static String id='signupScreen';
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Signup"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
        child: Column(
          children: [
            Text('Create your account' , style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            buildUserNameField(),
            SizedBox(height: 20,),
            buildEmailField(),  //function to create EmailField
            SizedBox(height: 20,),
            buildPasswordField(), // function to create Password Field
            SizedBox(height: 20,),
            Button('Sign Up', (){}), // class of buttons 
            
            
        ],
        ), 
      ),

      ),

    );
  }
}

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
        title: Text("SignUp"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
        child: Column(
          children: [
            Text('Signup'),
            SizedBox(height: 20,),
            buildUserNameField(),
            SizedBox(height: 20,),
            buildEmailField(),  //function to create EmailField
            SizedBox(height: 20,),
            buildPasswordField(), // function to create Password Field
            SizedBox(height: 20,),
            Button('Yes', (){}), // class of buttons 
            
            
        ],
        ), 
      ),

      ),

    );
  }
}
TextFormField buildUserNameField(){
  return TextFormField(
    decoration: InputDecoration(
        labelText: "User Name",
        prefixIcon: Padding(
            padding: EdgeInsets.all(10), child: Icon(Icons.person)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}
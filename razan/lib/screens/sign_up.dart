import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:flutter/widgets.dart';
import '../components/inputtext.dart';
import '../components/mydrawer.dart';

class Signup extends StatelessWidget {
  static String id = 'signupScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Signup"),
        backgroundColor: Colors.red,
      ),
      endDrawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
        child: Form(
          child: Column(
            children: [
              Text(
                'SIGNUP',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              buildUserNameField(), // function to creste username Field
              SizedBox(
                height: 20,
              ),
              buildEmailField(), //function to create EmailField
              SizedBox(
                height: 20,
              ),
              buildPasswordField(), // function to create Password Field
              SizedBox(
                height: 20,
              ),
              Button('Sign Up', () {}), // class of buttons
            ],
          ),
        ),
      ),
    );
  }
}

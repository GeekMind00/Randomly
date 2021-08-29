import 'package:flutter/material.dart';
import 'package:test/screens/sign_up.dart';
import '../components/button.dart';
import '../components/inputtext.dart';
import '../components/mydrawer.dart';

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Colors.red,
      ),
      endDrawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'LOGIN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              buildEmailField(email), //function to create EmailField
              SizedBox(
                height: 20,
              ),
              buildPasswordField(password), // function to create Password Field
              SizedBox(
                height: 20,
              ),
              //Padding(padding: EdgeInsets.only(top: 100)),
              Button('Log In', () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 70)),
                  Text(
                    "Don't have Acount , ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'sign_up');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ),
                ],
              ), // class of buttons
            ],
          ),
        ),
      ),
    );
  }
}

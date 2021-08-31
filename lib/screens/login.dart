import 'package:flutter/material.dart';
import 'package:randomNumbersApp/screens/sign_up.dart';
import '../components/button.dart';
import '../components/inputtext.dart';
import '../components/mydrawer.dart';

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  //Controller
  TextEditingController loginEmail = new TextEditingController();
  TextEditingController loginPassword = new TextEditingController();

  GlobalKey<FormState> loginFormstate = new GlobalKey<FormState>();

  logIn() {
    if (loginFormstate.currentState!.validate()) {
      print("not valid");
    } else {
      print("valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Color(0xff23449d),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Form(
          key: loginFormstate,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                'LOGIN',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              buildEmailField(loginEmail), //function to create EmailField
              SizedBox(
                height: 20,
              ),
              buildPasswordField(
                  loginPassword), // function to create Password Field
              SizedBox(
                height: 20,
              ),
              //Padding(padding: EdgeInsets.only(top: 100)),
              Button('Log In', () {
                logIn();
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 70)),
                  Text(
                    "Don't have Account? ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'sign_up');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff23449d)),
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

import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/inputText.dart';
import '../components/mydrawer.dart';
import '../controllers/userController.dart';

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  //Controller
  TextEditingController loginUsername = new TextEditingController();
  TextEditingController loginPassword = new TextEditingController();

  GlobalKey<FormState> loginFormstate = new GlobalKey<FormState>();
  showLoginPopUp(String authMessage) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(authMessage),
            actions: <Widget>[
              Button("Ok", () {
                Navigator.of(context).pop();
              })
            ],
          );
        });
  }

  logIn() async {
    if (loginFormstate.currentState!.validate()) {
      print(loginUsername.text);
      String authMessage = await UserController.loginController(
          loginUsername.text, loginPassword.text);
      if (authMessage == "Access granted!") {
        Navigator.of(context).pushNamed("home");
      } else {
        showLoginPopUp(authMessage);
      }
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
      //drawer: MyDrawer(),
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
              buildUserNameField(
                  loginUsername), //function to create Username field
              SizedBox(
                height: 20,
              ),
              buildPasswordField(
                  loginPassword), // function to create Password Field
              SizedBox(
                height: 20,
              ),
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

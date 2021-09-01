import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:flutter/widgets.dart';
import '../components/inputText.dart';
import '../components/mydrawer.dart';
import '../controllers/userController.dart';
class Signup extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SignupState();
  }
}

class _SignupState extends State<Signup> {
  final TextEditingController signupEmail = new TextEditingController();
  final TextEditingController signupPassword = new TextEditingController();
  final TextEditingController signupUsername = new TextEditingController();

  GlobalKey<FormState> signupFormstate = new GlobalKey<FormState>();

  static String id = 'signupScreen';
  signup() async {
    if (signupFormstate.currentState!.validate()) {
      await UserController.signUpController(
          signupUsername.text, signupEmail.text, signupPassword.text);
          Navigator.of(context).pushNamed("home");
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Signup"),
        backgroundColor: Color(0xff23449d),
      ),
      //drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Form(
          key: signupFormstate,
          child: ListView(
            children: <Widget>[
              Text(
                'SIGNUP',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              buildUserNameField(
                  signupUsername), // function to creste username Field
              SizedBox(
                height: 20,
              ),
              buildEmailField(signupEmail), //function to create EmailField
              SizedBox(
                height: 20,
              ),
              buildPasswordField(
                  signupPassword), // function to create Password Field
              SizedBox(
                height: 20,
              ),
              Button('Sign Up', () {
                signup();
              }), // class of buttons
            ],
          ),
        ),
      ),
    );
  }
}

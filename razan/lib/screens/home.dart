import 'package:flutter/material.dart';
import 'package:test/screens/sign_up.dart';
import '../components/button.dart';
import '../components/inputtext.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('LOGIN'),
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
              Button('Log In', (){}),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 40)
                  
                  ),
                  Text("Don't have Acount , ", style: TextStyle(fontStyle: FontStyle.italic),),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'sign_up');
                    },
                    child: Text('Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
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





import 'package:flutter/material.dart';
import 'package:test/screens/sign_up.dart';
import '../components/button.dart';

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
              Button(),
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

TextFormField buildEmailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        labelText: "email",
        prefixIcon: Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.email_rounded),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

TextFormField buildPasswordField() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: Padding(
            padding: EdgeInsets.all(10), child: Icon(Icons.vpn_key_rounded)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

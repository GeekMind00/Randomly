import 'package:flutter/material.dart';
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
            Text('LOGIN'),
            buildEmailField(),  //function to create EmailField
            SizedBox(height: 20,),
            buildPasswordField(), // function to create Password Field
            SizedBox(height: 20,),
            Button(), // class of buttons 
        ],
        ), 
      ),

      ),

      
    );
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
}

TextFormField buildPasswordField() {
  return 
  TextFormField(
    obscureText: true,
    decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: Padding(
            padding: EdgeInsets.all(10), child: Icon(Icons.vpn_key_rounded)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

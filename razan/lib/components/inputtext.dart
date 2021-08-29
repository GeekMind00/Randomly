import 'package:flutter/material.dart';

TextFormField buildEmailField(TextEditingController email) {
  return TextFormField(
    controller: email,
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

TextFormField buildPasswordField(TextEditingController myController) {
  return TextFormField(
    controller: myController,
    obscureText: true,
    decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: Padding(
            padding: EdgeInsets.all(10), child: Icon(Icons.vpn_key_rounded)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

TextFormField buildUserNameField(TextEditingController myController) {
  return TextFormField(
    controller: myController,
    decoration: InputDecoration(
        labelText: "User Name",
        prefixIcon:
            Padding(padding: EdgeInsets.all(10), child: Icon(Icons.person)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
  );
}

import 'dart:html';

import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class LogIn extends StatefulWidget {
  State<StatefulWidget> createState(){
    return LogInState() ;
  }
}

class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.blue,
          /* actions: <Widget>[
            IconButton(icon: Icon(Icons.login_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_box),onPressed: () {})
          ], */
          centerTitle: true,
        ),
        //endDrawer: MyDrawer(),
        body: ListView(children: <Widget>[
          Center(
            child: Container(
              height: 250 ,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: .1, blurRadius: 1, offset: Offset(1,1))
                ]
              ),
              child: Form(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //start username
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Username" , style: TextStyle(fontSize: 20),)),
                    TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Username", 
                  fillColor: Colors.grey[200], 
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  )
              ),
              //end username
              //start password
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Password" , style: TextStyle(fontSize: 20),)),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: TextFormField(
                        obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter Your Password", 
                  fillColor: Colors.grey[200], 
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  )
              ),
                    )
                  ],
                  )),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                InkWell(onTap: (){}, child: Text("Forgot Your Password?", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 16),)),
                SizedBox(height: 24,),
                RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Login", style: TextStyle(color: Colors.white, fontSize: 18),),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        padding: EdgeInsets.only(right: 10), child: Icon(Icons.arrow_forward, color: Colors.white,),
                      )
                    ],
                  ),
                ),
                Container( margin: EdgeInsets.only(top: 10), child: RichText(
                  text: TextSpan(style: TextStyle(color: Colors.black, fontSize: 16), children: <TextSpan>[
                    TextSpan(text: "Don't Have account?"),
                    //TextSpan(text: " Signup Now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500))
                  ]),
                ),
                ),
                InkWell(onTap: (){
                  Navigator.of(context).pushNamed("signup");
                }, child: Text(" Signup Now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600))),
                ],
            ),
          )
          
        ],
        )
      );
  }
}
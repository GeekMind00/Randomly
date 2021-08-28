import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
  
    return _HomeState();
  }
}
class _HomeState extends State<Home>{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: GestureDetector(behavior: HitTestBehavior.opaque,
      onTap: (){Navigator.pushNamed(context, 'login');}
      ,),
    );
  }
}
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff23449d),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(context, 'login');
          },
          child: Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logoo.jpeg'),
          ),
        ));
  }
}

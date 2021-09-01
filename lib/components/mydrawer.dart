import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Habiba Mahmoud"),
          accountEmail: Text("habiba@gmail.com"),
          currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person), backgroundColor: Colors.white),
          decoration: BoxDecoration(
            color: Color(0xff23449d),
          ),
        ),
        ListTile(
          title: Text("Home"),
          leading: Icon(
            Icons.home, color: Color(0xff23449d)
          ),
          onTap: () {
            Navigator.of(context).pushNamed("home");
          },
        ),
        ListTile(
          title: Text("Create Account"),
          leading: Icon(Icons.account_box, color: Color(0xff23449d)),
          onTap: () {
            Navigator.of(context).pushNamed("sign_up");
          },
        ),
        ListTile(
          title: Text("Login"),
          leading: Icon(Icons.login, color: Color(0xff23449d)),
          onTap: () {
            Navigator.of(context).pushNamed("login");
          },
        ),
        ListTile(
          title: Text("Logout"),
          leading: Icon(Icons.logout , color: Color(0xff23449d)),
          onTap: () {
            Navigator.of(context).pushNamed("home");
          },
        )
      ],
    ));
  }
}

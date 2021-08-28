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
          currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2QK0lKvT-2XH8G47-Ea0EyHMgIhkO4Kxp7A&usqp=CAU"),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          title: Text("Home"),
          leading: Icon(
            Icons.home,
          ),
          onTap: () {
            Navigator.of(context).pushNamed("home");
          },
        ),
        ListTile(
          title: Text("Create Account"),
          leading: Icon(Icons.account_box),
          onTap: () {
            Navigator.of(context).pushNamed("sign_up");
          },
        ),
        ListTile(
          title: Text("Login"),
          leading: Icon(Icons.login),
          onTap: () {
            Navigator.of(context).pushNamed("login");
          },
        ),
        ListTile(
          title: Text("Logout"),
          leading: Icon(Icons.logout),
          onTap: () {
            Navigator.of(context).pushNamed("login");
          },
        )
      ],
    ));
  }
}

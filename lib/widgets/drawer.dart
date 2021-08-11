import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Fala Mjanja"),
              accountEmail: Text("falamjanja@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Fala Mjanja"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("falamjanja@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

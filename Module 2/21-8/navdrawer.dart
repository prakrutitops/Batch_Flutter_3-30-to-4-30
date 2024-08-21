import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget
{
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center(),
        drawer: Drawer
          (
            child: ListView
              (

                padding: EdgeInsets.zero,
                children:
                [
                  UserAccountsDrawerHeader
                    (
                    accountName: Text("Abhishek Mishra"),
                    accountEmail: Text("abhishekm977@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text(
              "A",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
                  ListTile(
                    leading: Icon(Icons.home), title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings), title: Text("Settings"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.contacts), title: Text("Contact Us"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),

                ]),



        ),);

  }
}

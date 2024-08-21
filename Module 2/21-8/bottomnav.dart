import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget
{
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
{
  int index=0;
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Bottom Navigation"),),
        body: Center
          (
            child: _widgetOptions.elementAt(index),
          ),
        bottomNavigationBar: BottomNavigationBar
          (
          items:
          [
              BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),label:"Options A",backgroundColor: Colors.blueGrey),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Option B",backgroundColor: Colors.blueGrey),
              BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Option C",backgroundColor: Colors.blueGrey),


          ],

          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5

        ),
      );
  }
}

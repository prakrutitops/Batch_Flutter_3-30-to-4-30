import 'package:flutter/material.dart';

import 'add.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Firebase Crud"),),
        body: Center(),
        floatingActionButton: FloatingActionButton
          (
          onPressed: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context) => AddPage()));
          },
          child: Icon(Icons.add),
        ),

      );
  }
}

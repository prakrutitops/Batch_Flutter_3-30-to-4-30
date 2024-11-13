import 'package:flutter/material.dart';

import 'adddata.dart';

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
        body: Center
          (

          ),
          floatingActionButton: FloatingActionButton
            (
              child: Icon(Icons.add),
              onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context) => AddData()));
              },
            ),
      );
  }
}

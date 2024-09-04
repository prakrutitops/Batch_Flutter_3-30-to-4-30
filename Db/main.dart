import 'package:flutter/material.dart';

import 'adddata.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("DB Example"),),
        body: Center(),
        floatingActionButton: FloatingActionButton
          (
            onPressed: ()
            {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddData()));
            },
            child: Icon(Icons.add),
          ),
      );
  }
}

import 'package:db2/database/dbhelper.dart';
import 'package:db2/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  MyDbHelper myDbHelper = MyDbHelper.instance;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          drawer: MyDrawer(),
          appBar: AppBar
          (
            backgroundColor: MyColors.primaryColor,
            centerTitle: true,
            title: Text("create and store category"),
          ),
      );
  }
}





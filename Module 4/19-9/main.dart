import 'package:db8/screens/home.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Sqflite Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
          primarySwatch: Colors.blue,
        ),
      home: HomePage(),
    );
  }
}

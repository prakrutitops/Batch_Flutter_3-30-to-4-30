import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{


  final Future<FirebaseApp> _initailization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context)
  {
    return FutureBuilder
      (
          future: _initailization,
          builder: (context, snapshot)
          {
              if(snapshot.hasError)
              {
                print('Something Went Wrong');
              }
              if(snapshot.connectionState==ConnectionState.done)
              {
                return MaterialApp
                  (
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    appBarTheme: const AppBarTheme(
                      centerTitle: true,
                    ),
                  ),
                  home: const HomePage(),
                );
              }

              return CircularProgressIndicator();
          }
      );
  }
}


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonwithmodel/showdata.dart';

import 'menupage.dart';

void main()
{
  runApp(MaterialApp(home:MenuPage()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  getdata() async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Dhaval/selectmenu.php");

    var resp = await http.get(url);
    return jsonDecode(resp.body);

  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Json Data"),),
        body: Center
          (
          child: FutureBuilder(
            future: getdata(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
            {

              if(snapshot.hasData)
              {
                return ShowData(list:snapshot.data);
              }
              if(snapshot.hasError)
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data can not be fetched")));
              }

              return CircularProgressIndicator();


            },),
          ) ,
      );
  }
}

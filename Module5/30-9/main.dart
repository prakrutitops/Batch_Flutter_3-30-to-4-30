import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

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
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Json Parsing"),),
        body: Center
          (
              child: FutureBuilder(
                future: getdata(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
                {

                    if(snapshot.hasData)
                    {
                          return Model(list:snapshot.data);
                    }
                    if(snapshot.hasError)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data can not be fetched")));
                    }

                    return CircularProgressIndicator();


                    },),


          ),
      );
  }

  getdata() async
  {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/comments");

    var resp = await http.get(url);
    return jsonDecode(resp.body);

  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("View details"),),
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
    var url = Uri.parse("https://prakrutitech.buzz/Test_API/view.php");

    var resp = await http.get(url);
    return jsonDecode(resp.body);

  }
}

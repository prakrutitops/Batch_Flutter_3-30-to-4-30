import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class OtpScreen extends StatefulWidget
{
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("OTP Screen"),),
      body: Center
        (

        child: FutureBuilder(



          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return Model(list: snapshot.data);
            }
            if (snapshot.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Data can not be fetched")));
            }

            return CircularProgressIndicator();
          },




        ),


      ),
    );
  }
}

  Future<void> getdata()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/fetchotp.php");
    var resp = await http.post(url,body:
    {
      "email":"jayr77010@gmail.com"
    });

    return jsonDecode(resp.body);
  }


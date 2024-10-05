import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:signupsigninex/signup.dart';
import 'package:http/http.dart' as http;

void main()
{
  runApp(MaterialApp(home: MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late String e,p;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form"),),
      body: Center
        (
          child: Column
            (
              children:
              [
                  TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
                  SizedBox(height: 10,),
                  TextField(controller: pass,decoration: InputDecoration(hintText: "Enter Password"),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {
                    e = email.text.toString();
                    p = pass.text.toString();

                    logindata();


                  }, child: Text("Login")),
                ElevatedButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Signup()));
                }, child: Text("Do you want to Signup?"))


              ],
            ),
        ),


    );
  }

  void logindata()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Test_API/signin.php");
    var resp = await http.post(url,body:
    {
      "email" : e,
      "password" : p
    });
    var data = json.decode(resp.body);

    if(data==0)
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));
    }
    else
    {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login success")));
    }


    //print(resp.toString());
  }
}

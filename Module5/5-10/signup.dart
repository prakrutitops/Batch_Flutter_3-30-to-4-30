import 'package:flutter/material.dart';
import 'package:signupsigninex/main.dart';
import 'package:http/http.dart' as http;


class Signup extends StatefulWidget
{
  const Signup({super.key});

  @override
  State<Signup> createState() => _MyAppState();
}

class _MyAppState extends State<Signup>
{
  TextEditingController fname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late String f,e,p;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Form"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextField(controller: fname,decoration: InputDecoration(hintText: "Enter Email"),),
            SizedBox(height: 10,),
            TextField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
            SizedBox(height: 10,),
            TextField(controller: pass,decoration: InputDecoration(hintText: "Enter Password"),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
               f = fname.text.toString();
               e = email.text.toString();
               p = pass.text.toString();

              insertdata();

              Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp()));
            }, child: Text("Signup")),
            ElevatedButton(onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp()));

            }, child: Text("Do you want to Login?"))

          ],
        ),
      ),


    );
  }

  void insertdata()
  {
      var url= Uri.parse("https://prakrutitech.buzz/Test_API/signup.php");
      http.post(url,body:
      {
        "fname":f,
        "email":e,
        "password":p
      });

  }
}

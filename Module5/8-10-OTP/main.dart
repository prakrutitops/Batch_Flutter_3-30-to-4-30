import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'otpscreen.dart';
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
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  late String n,e;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(),
      body: Center
        (
        child: Column
          (
          children:
          [

            TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Name"),),
            TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
            ElevatedButton(onPressed: ()
            {

              n = name.text.toString();
              e = email.text.toString();

              insertdata();
            }, child: Text("Insert data"))

          ],
        ),
      ),
    );
  }

  Future<void> insertdata() async
  {
    var url = Uri.parse("https://prakrutitech.buzz/email.php");
    await http.post(url,body:
    {
      "first_name":n,
      "email":e
    });
    print("inserted");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
  }
}


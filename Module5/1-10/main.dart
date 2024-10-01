import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  
  late String n,s,e;
  
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
                    TextFormField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname"),),
                    TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Email"),),
                    ElevatedButton(onPressed: ()
                    {
                      
                         n = name.text.toString();
                         s = surname.text.toString();
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
    var url = Uri.parse("https://prakrutitech.buzz/Test_API/insert.php");
    await http.post(url,body:
    {
      "name":n,
      "surname":s,
      "email":e
    });
    print("inserted");
  }
}


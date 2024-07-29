import 'package:flutter/material.dart';
import 'package:secondex/firstscreen.dart';

class SecondScreen extends StatelessWidget
{
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Second"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    Text("Welcome",style: TextStyle(color: Colors.white,backgroundColor: Colors.blue,fontSize: 16.00,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    TextField(controller:name,decoration: InputDecoration(hintText:"Enter Your Name"),),
                    SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                    {
                      String data = name.text.toString();
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> FirstScreen(a: data,)));
                   }, child: Text("Submit")),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                    {
                      Navigator.pop(context);
                    }, child: Text("Go Back"))

                ],
            ),
          ),
      );
  }

}
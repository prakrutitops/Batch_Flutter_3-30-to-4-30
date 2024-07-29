import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondex/secondscreen.dart';

class FirstScreen extends StatelessWidget
{
  String a;
  FirstScreen({required this.a});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("First Screen"),),
        body: Center
          (
            child: Column
              (
                  children: 
                  [
                      Text("Welcome $a"),
                      Image.asset("images/login.png"),
                      SizedBox(height: 10),
                      ElevatedButton(onPressed: ()
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen()));
                      }, child: Text("Click 1"))
                                             
                    
                  ],
              ),
          ),
      );
  }
  
}
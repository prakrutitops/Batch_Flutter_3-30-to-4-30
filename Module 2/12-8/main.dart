import 'package:flutter/material.dart';
import 'package:widgetex/radiobutton.dart';

import 'alertdialog.dart';
import 'checkbox.dart';

void main() 
{
  runApp(MaterialApp(home:MyAlert()));
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
        appBar: AppBar(title: Text("Example 1"),),
        body: Center
          (
            child:  Column
              (

                children:
                [

                    ElevatedButton(onPressed: ()
                    {
                        print("Button Clicked");

                    }, child: Text("Click me i am button")),

                    GestureDetector
                      (
                          onTap: ()
                        {
                          print("Text Clicked");
                        },
                        child: Text("Click me i am text"),
                      ),

                    InkWell
                      (
                        onTap: ()
                        {
                          print("Image Clicked");
                        },
                        child:Image.network("https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA3L2pvYjE0NDgtYmFja2dyb3VuZC0wNGEteF8xLmpwZw.jpg")
                      )


                ],
              )
          ),
      );
  }
}

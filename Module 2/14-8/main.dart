import 'package:flutter/material.dart';

import 'alert.dart';
import 'floatbutton.dart';

void main()
{
  runApp(MaterialApp(home:MyButton()));
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
        appBar: AppBar(title: Text("Containe & Alert"),),
        body: Center
          (
             child: Column
               (
                  children:
                  [
                      Row
                        (
                          children:
                          [
                              //SizedBox(width: 20.00,),
                              Padding(padding: EdgeInsets.only(left: 20.00)),
                              Container(color:Colors.orange,width: 150.00,height: 150.00,),
                              //SizedBox(width: 20.00,),

                              Container(
                               color:Colors.blue,
                                width: 150.00,
                                height: 150.00,
                                // decoration: BoxDecoration
                                //   (
                                //    //border: Border.all(color: Colors.black, width: 3),
                                //   ),
                                margin:EdgeInsets.only(left: 20.00),
                                padding:EdgeInsets.all(16.00),
                                child: ElevatedButton(onPressed: ()
                                {

                                }, child: Text("Submit"),),),

                          ],
                        ),
                      Row(),
                      Row(),
                  ],
                )

          ),
      );
  }
}

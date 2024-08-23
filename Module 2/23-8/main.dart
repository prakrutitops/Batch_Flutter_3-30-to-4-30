import 'package:customize/slider.dart';
import 'package:flutter/material.dart';

import 'mywidgets/textfield.dart';

void main()
{
  runApp(MaterialApp(home:SliderEx()));
}
class MyApp extends StatelessWidget
{

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Customize Widgets"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  CustomTextEditField
                    (
                      controller: nameController,
                      labettxt: 'Name',
                    ),
                  CustomTextEditField
                    (
                    controller: passController,
                    labettxt: 'Password',
                    visibility: true,
                  ),
                  TextField
                    (
                    controller: passController,
                    decoration: InputDecoration(hintText: "Enter Pass",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.visibility)),
                    obscureText: true,

                    )

                ],

              ),

          ),
      );
  }
}


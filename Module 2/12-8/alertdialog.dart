import 'package:flutter/material.dart';

class MyAlert extends StatefulWidget
{
  const MyAlert({super.key});

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: ElevatedButton
              (
              onPressed: ()
              {

                  alert1(context);

              },
              child: Text("Click Sample Alert"),),
          ),
      );
  }

  void alert1(BuildContext context)
  {

      Widget okbtn = ElevatedButton(onPressed: ()
      {
        Navigator.pop(context);

      }, child: Text("Ok"));

      AlertDialog alertDialog = AlertDialog
        (
        title: Text("Simple Alert Message"),
        content: Text("This is an alert message"),
        actions:
        [
          okbtn
        ],
        );
      showDialog
        (
        context: context,
        builder: (BuildContext context)
        {
          return alertDialog;
        },
      );



  }
}

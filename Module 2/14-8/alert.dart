import 'package:flutter/material.dart';

class MyAlerts extends StatefulWidget
{
  const MyAlerts({super.key});

  @override
  State<MyAlerts> createState() => _MyAlertsState();
}
enum Product { Apple, Samsung, Oppo, Redmi }
class _MyAlertsState extends State<MyAlerts>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Alerts"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                  ElevatedButton(onPressed: ()
                  {
                      _simple();
                  }, child:Text("Simple Alert")),
                  ElevatedButton(onPressed: ()
                  {
                      _txtalert();
                  }, child:Text("Text Alert")),
                  ElevatedButton(onPressed: ()
                  {
                      _confirmalert();
                  }, child:Text("Confirm Alert")),
                  ElevatedButton(onPressed: ()
                  {
                    _selectalert();
                  }, child:Text("Selection Alert")),

                ],
              ),
          ),
      );
  }

  void _simple()
  {
    Widget okbtn = ElevatedButton(onPressed: ()
    {
      Navigator.pop(context);
    }, child: Text("OK"));

    AlertDialog alert = AlertDialog
      (
        title: Text("Simple Alert"),
        content: Text("Simple Alert Data"),
        actions:
        [
          okbtn
        ],
      );
      showDialog(context: context,
          builder: (BuildContext context)
         {
          return alert;
          });
  }

  void _txtalert()
  {
    Widget txtfield = TextField(decoration: InputDecoration(hintText: "Enter Data"),);

    Widget btn = ElevatedButton(onPressed: ()
    {
      Navigator.pop(context);
    }, child: Text("submit"));

    AlertDialog alert = AlertDialog
      (
      title: Text("Simple Alert"),
      content: Text("Simple Alert Data"),
      actions:
      [
        txtfield,
        btn
      ],
    );
    showDialog(context: context,
        builder: (BuildContext context)
        {
          return alert;
        });
  }

  void _confirmalert()
  {
    Widget okbtn = ElevatedButton(onPressed: ()
    {
      Navigator.pop(context);
    }, child: Text("OK"));

    Widget cancelbtn = ElevatedButton(onPressed: ()
    {
      Navigator.pop(context);
    }, child: Text("CANCEL"));

    AlertDialog alert = AlertDialog
      (
      title: Text("Are you sure you want to exit?"),
      content: Text("Simple Alert Data"),
      actions:
      [
        okbtn,
        cancelbtn
      ],
    );
    showDialog(context: context,
        builder: (BuildContext context)
        {
          return alert;
        });
  }

  void _selectalert()
  {



    showDialog(context: context,
        builder: (BuildContext context)
        {
          return SimpleDialog
            (
              children:
              [

                SimpleDialogOption
                  (
                    onPressed: ()
                    {
                      Navigator.pop(context, Product.Apple);
                    },
                    child: const Text('Apple'),
                  ),
                SimpleDialogOption
                  (
                  onPressed: ()
                  {
                    Navigator.pop(context, Product.Samsung);
                  },
                  child: const Text('Samsung'),
                ),
                SimpleDialogOption
                  (
                  onPressed: ()
                  {
                    Navigator.pop(context, Product.Oppo);
                  },
                  child: const Text('Oppo'),
                ),
                SimpleDialogOption
                  (
                  onPressed: ()
                  {
                    print(Product.Redmi);
                    
                    Navigator.pop(context, Product.Redmi);
                  },
                  child: const Text('Redmi'),
                ),

              ],
            );
        });
  }
}

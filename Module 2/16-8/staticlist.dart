import 'package:flutter/material.dart';


class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("List Example"),),
        body: Center
          (
            child:Column
              (
                children:
                [

                ListTile
                (
                title: Text("Flutter"),
          leading: Icon(Icons.add),
          subtitle: Text("Mobile Application development"),
          trailing: Icon(Icons.edit),
          iconColor: Colors.blue,
          onLongPress: ()
          {
            print("1");
          },
        ),

        ListTile
        (
        title: Text("Java"),
    leading: Icon(Icons.add),
    subtitle: Text("Mobile Application development"),
    trailing: Icon(Icons.edit),
    iconColor: Colors.blue,
    onLongPress: ()
    {
    print("1");
    },
    ),

    ListTile
    (
    title: Text("Php"),
    leading: Icon(Icons.add),
    subtitle: Text("Mobile Application development"),
    trailing: Icon(Icons.edit),
    iconColor: Colors.blue,
    onLongPress: ()
    {
    print("1");
    },)


                ],
               )







    ));
  }
}

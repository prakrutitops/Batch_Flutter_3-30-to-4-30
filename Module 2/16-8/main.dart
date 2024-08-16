import 'package:flutter/material.dart';
import 'package:listexdata/staticlist.dart';

import 'dynamiclist.dart';

void main()
{
  runApp(MaterialApp(home:MyApp3()));
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
        appBar: AppBar(title: Text("List Example"),),
        body: ListView.builder
          (
            itemCount: 5,
            itemBuilder:(context,index)
            {
                 return ListTile
                  (
                    title: Text("Flutter $index"),
                    leading: Icon(Icons.add),
                    subtitle: Text("Mobile Application development"),
                    trailing: Icon(Icons.edit),
                    iconColor: Colors.blue,
                    onLongPress: ()
                    {
                      print("1");
                    },
                  );

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
                 );

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
                 );
            })

                //  ListTile(title: Text("Flutter"),leading: Icon(Icons.add),subtitle: Text("Mobile Application development"),trailing: Icon(Icons.edit),iconColor: Colors.blue,onLongPress: (){ print("1");},),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Flutter"),),
                  // ListTile(title: Text("Java"),),




      );
  }
}

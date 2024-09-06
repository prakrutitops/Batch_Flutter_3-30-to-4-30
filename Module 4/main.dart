import 'package:flutter/material.dart';

import 'adddata.dart';
import 'db.dart';

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

class _MyAppState extends State<MyApp> {
  List<Map> slist = [];
  DbHelper db = DbHelper();

  @override
  void initState() {
    // TODO: implement initState
    // super.initState();

    db.open();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("DB Example"),),
      body: SingleChildScrollView
        (
          child: Column
            (
              children: slist.map((tops) {
                return Card
                  (
                  child: ListTile
                    (
                    leading: Icon(Icons.person),
                    title: Text(tops["name"]),
                    subtitle: Text(
                        "Email:" + tops["email"].toString() + ", Password: " +
                            tops["password"]),
                    trailing: Wrap
                      (
                          children:
                          [
                            IconButton(onPressed: ()
                            {

                            }, icon: Icon(Icons.edit)),

                            IconButton(
                                onPressed: ()
                                {
                                  //db.db.rawDelete("Delete from students where email=?",[stuone["email"]]);
                                  //print("Deleted");
                                 // getdata();
                                }, icon: Icon(Icons.delete)),


                          ],
                      ),
                  ),
                );
              }).toList()

          )

      ),
      floatingActionButton: FloatingActionButton
        (
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AddData()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void getdata() async
  {
    Future.delayed(Duration(milliseconds: 500), () async
    {
      slist = await db.db.rawQuery('SELECT * FROM info');
      setState(() {

      });
    });
  }
}

import 'package:dbex/db.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  DbHelper db = DbHelper();

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    db.open();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add Page"),),
        body: Center
          (

            child: Column
              (

              children:
              [

                  TextField(controller:name,decoration: InputDecoration(hintText: "Enter Your Name"),),
                  SizedBox(height: 15,),
                  TextField(controller:email,decoration: InputDecoration(hintText: "Enter Your Email"),),
                  SizedBox(height: 15,),
                  TextField(controller:password,decoration: InputDecoration(hintText: "Enter Your Password"),),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: ()
                  {
                      String n = name.text.toString();
                      String e = email.text.toString();
                      String p = password.text.toString();

                      db.db.rawInsert("insert into info(name,email,password)values(?,?,?)",[n,e,p]);
                      print("Inserted");

                  }, child: Text("Add"))




              ],

            ),
          ),


    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/view.dart';

class EditData extends StatefulWidget
{
  int id;
  List list;
  EditData({required this.list,required this.id});

  @override
  State<EditData> createState() => _MyAppState();
}

class _MyAppState extends State<EditData>
{
  var id=0;
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  late String n,s,e;


  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    print(widget.id);
    print(widget.list[widget.id]['name']);
    print(widget.list[widget.id]['surname']);
    print(widget.list[widget.id]['email']);


   //  id = widget.list[widget.id]['id'];
    name = TextEditingController(text: widget.list[widget.id]['name']);
    surname = TextEditingController(text: widget.list[widget.id]['surname']);
    email = TextEditingController(text: widget.list[widget.id]['email']);
  }


  @override
  Widget build(BuildContext context)
  {


    return Scaffold
      (
      appBar: AppBar(),
      body: Center
        (
        child: Column
          (
          children:
          [

            TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Name")),
            TextFormField(controller: surname,decoration: InputDecoration(hintText: "Enter Surname")),
            TextFormField(controller: email,decoration: InputDecoration(hintText: "Enter Email")),
            ElevatedButton(onPressed: ()
            {

               n = name.text.toString();
               s = surname.text.toString();
               e = email.text.toString();

              updatedata();
              Navigator.push(context,MaterialPageRoute(builder: (context) => ViewData()));



            }, child: Text("Update data"))

          ],
        ),
      ),
    );
  }

  Future<void> updatedata() async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Test_API/update.php");
    await http.post(url,body:
    {
      "id":widget.list[widget.id]['id'],
      "name":n,
      "surname":s,
      "email":e
    });
    print("updated");
  }
}


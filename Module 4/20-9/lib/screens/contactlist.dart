import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../database/dbhelper.dart';

class ContactList extends StatefulWidget
{
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList>
{
  final dbHelper = DbHelper.instance;
  List<Map<String, dynamic>> allCategoryData = [];

  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    _query();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Contact List"),),
        body: Column
          (
        children:
        [
          Expanded(

              child: ListView.builder
                (
                  itemCount:allCategoryData.length,
                  itemBuilder: (context,index)
                  {
                    var item = allCategoryData[index];
                    Uint8List bytes = base64Decode(item['profile']);
                    return Container
                      (
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      child: Row
                        (
                        children:
                        [
                          SizedBox
                            (
                            width: 20,
                          ),
                          CircleAvatar(child: Image.memory(bytes,fit: BoxFit.cover,),minRadius: 20,maxRadius: 25,),
                          Text("${item['name']}"),
                          Text("${item['lname']}"),
                          Spacer(),
                          IconButton(onPressed: ()
                          {
                            _delete(item['_id']);

                          }, icon: Icon(Icons.delete))

                        ],
                      ),
                    );
                  }
              )
          )
        ]




          ),
      );
  }
  void _query() async
  {
    final allRows = await dbHelper.queryAllRowscontact();
    print('query all rows:');
    allRows.forEach(print);
    allCategoryData = allRows;
    setState(() {});
  }
  void _delete(int id) async
  {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.deleteContact(id);
    print('deleted $rowsDeleted row(s): row $id');
    _query();
  }
}

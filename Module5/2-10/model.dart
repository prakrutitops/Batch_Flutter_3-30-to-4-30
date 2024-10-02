import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud/view.dart';

class Model extends StatelessWidget
{
  List list;

  Model({required this.list});
  var mydata;

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
    (
      itemCount:list.length,
      itemBuilder:(context,index)
      {
          return ListTile
            (

            title: Text(list[index]["name"]),
            subtitle: Column
              (
                children:
                [

                  Text(list[index]["surname"]),
                  Text(list[index]["email"]),


                ],  
             ),
            trailing: Wrap
              (
                children:
                [

                    IconButton(onPressed: ()
                    {

                    }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()
                    {
                        mydata=list[index]["id"];
                        print("Id is : ${list[index]["id"]}");
                        deletedata();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ViewData()));



                    }, icon: Icon(Icons.delete))
                ],
              ),

            );
      });
  }

  void deletedata()
  {
     var url = Uri.parse("https://prakrutitech.buzz/Test_API/delete.php");
      http.post(url,body:
     {
       "id":mydata
      });
  }
}

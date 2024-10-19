import 'package:flutter/material.dart';

class ShowData extends StatelessWidget
{
  late List list;

  ShowData({required this.list});
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

            title: Text(list[index]["menuname"]),
            subtitle: Column
              (
              children:
              [

                Text(list[index]["id"]),
                Text(list[index]["menuprice"]),


              ],
            ),

          );
        });
  }
}

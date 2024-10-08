import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Model extends StatelessWidget
{
  List list;
  TextEditingController otp = TextEditingController();

  Model({required this.list});
  var mydata;
  var data;
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
            title: Column
              (
                children:
                [
                    TextField(controller: otp,decoration: InputDecoration(hintText: "Enter OTP"),),
                    ElevatedButton(onPressed: ()
                    {
                       data = otp.text.toString();

                       mydata= list[index]["otp"].toString();

                       //print(mydata);
                       if(mydata==data)
                       {
                         print("Success");
                       }
                       else
                       {
                         print("Wrong OTP");
                       }


                    }, child: Text("Submit"))
                ],
              ),
          );

      });
  }


}

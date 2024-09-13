import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: RandomNumEx()));
}
class RandomNumEx extends StatefulWidget
{
  const RandomNumEx({super.key});

  @override
  State<RandomNumEx> createState() => _RandomNumExState();
}

class _RandomNumExState extends State<RandomNumEx>
{
  TextEditingController num = TextEditingController();
  int _randomNumber=0;
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();

    _randomnum();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Random Number"),),
        body: Container
          (
            margin: EdgeInsets.all(16.0),
            child: Column
              (
                children:
                [

                  SizedBox(height: 10),
                  TextField(controller: num,decoration: InputDecoration(hintText: "Enter Number"),),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                  {
                        String n1 = num.text.toString();
                        int n2 = int.parse(n1);
                        guess(n2);

                  }, child: Text("Guess")),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                  {

                  }, child: Text("Reset")),


                ],
              ),
          ),
      );
  }

  void _randomnum()
  {
    final random = Random();
    _randomNumber = random.nextInt(20) + 5;
  }

  void guess(int n2)
  {
      if(n2!=null)
      {
        setState(()
        {
          if(n2 == _randomNumber)
          {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Congratulations! You guessed the number $_randomNumber!")));

          }
          else if (n2 < _randomNumber)
          {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Try higher!")));


          }
          else
          {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Try lower!")));


          }

        });
      }
  }
}

import 'package:flutter/material.dart';

class CheckboxEx extends StatefulWidget {
  const CheckboxEx({super.key});

  @override
  State<CheckboxEx> createState() => _CheckboxExState();
}

class _CheckboxExState extends State<CheckboxEx>
{

  var total=0;
  var amount=0;
  var data="";
  late bool a=false,b=false,c=false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: Column
              (
                children:
                [
                  CheckboxListTile(title:Text("Pizza"),subtitle:Text("Rs. 100"),value: a,
                      onChanged: (value)
                    {
                      this.a=value!;

                    setState(()
                    {

                      amount+=100;
                      data+="\n Pizza @ rs.100";
                    });

                  }),
                  CheckboxListTile(title:Text("Burger"),subtitle:Text("Rs. 70"),
                      value: b,
                      onChanged: (value)
                    {
                      this.b=value!;
                      setState(()
                      {
                        amount+=70;
                        data+="\n Burger @ rs.70";
                      });

                  }),
                  CheckboxListTile(title:Text("Coffee"),subtitle:Text("Rs. 120"),value: c,
                      onChanged: (value)
                    {
                      this.c=value!;
                      setState(() {
                        amount+=120;
                        data+="\n Coffee @ rs.120";
                      });

                    }),


                  ElevatedButton(onPressed: ()
                  {

                    print("\n Bill $data and $amount");

                  }, child: Text("Order"))

                ],
              ),
          ),
      );
  }
}

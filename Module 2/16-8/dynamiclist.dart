import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget
{
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3>
{

  List Images=
  [
                "https://m.economictimes.com/thumb/msid-102726945,width-1200,height-900,resizemode-4,imgsize-11438/har-ghar-tiranga-abhiyan-2-0-commences-tricolour-available-at-post-offices-and-online-at-rs-25.jpg",
                "https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg",
                "https://media.istockphoto.com/id/487194678/photo/usa-and-uk-flag.jpg?s=612x612&w=0&k=20&c=1QQAGOTdMXz368m9KbN9J4BnwxwgOTCxOxMpjMHoZds="
  ];
  List Country = ["India","USA","UK"];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          body: ListView.builder
            (
              itemCount: Country.length,
              itemBuilder: (context,index)
              {
                return ListTile
                  (
                    leading: Image.network(Images[index],width: 50,height: 800,),
                    title: Text(Country[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber,fontSize: 30.00),),

                  );
              }
            ),
      );
  }
}

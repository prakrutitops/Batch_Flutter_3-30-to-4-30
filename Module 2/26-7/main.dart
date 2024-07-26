import 'package:flutter/material.dart';

void main()
{
  runApp
    (
      MaterialApp
      (
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      )
  );
}


class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
          appBar: AppBar(title: Text("Tops Tech"),backgroundColor:Colors.blueGrey),
          body:SingleChildScrollView
            (
            child:Center
              (
                child: Column
                  (
                    children:
                    [
                      Text("Dhaval",style: TextStyle(color: Colors.blue,fontSize: 25),),
                      SizedBox(height: 10,),
                      Text("Sujal",style: TextStyle(color: Colors.orange,fontSize: 25)),
                      SizedBox(height: 10,),
                      Text("Shruti",style: TextStyle(color: Colors.amber,fontSize: 25)),
                      SizedBox(height: 10,),
                      Image.asset("images/a.png",height: 100,),
                      SizedBox(height: 10,),
                      Image.network("https://images-cdn.ubuy.co.in/633b5984f8af8c7e5a371e0b-na-i13-pro-max-cell-phones-6-3-inch-hd.jpg",height: 150),
                      SizedBox(height: 10,),
                      Text("Dhaval",style: TextStyle(color: Colors.blue,fontSize: 25),),
                      SizedBox(height: 10,),
                      Text("Sujal",style: TextStyle(color: Colors.orange,fontSize: 25)),
                      SizedBox(height: 10,),
                      Text("Shruti",style: TextStyle(color: Colors.amber,fontSize: 25)),
                      SizedBox(height: 10,),
                      Image.asset("images/a.png",height: 100,),
                      SizedBox(height: 10,),
                      Image.network("https://images-cdn.ubuy.co.in/633b5984f8af8c7e5a371e0b-na-i13-pro-max-cell-phones-6-3-inch-hd.jpg",height: 150),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                        print("cliked");

                      }, child: Text("Submit"))
                    ],
                  )


            ),
        ));
  }

}



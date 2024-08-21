import 'package:flutter/material.dart';

import 'bottomnav.dart';
import 'navdrawer.dart';

void main()
{
  runApp(MaterialApp(home:NavDrawer()));
}
class MyApp extends StatelessWidget
{

  List<String> images =
  [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Gridview"),),
        body: Container
          (
              decoration: BoxDecoration(color: Colors.amber),
              margin: EdgeInsets.only(top: 16.00),
              child: GridView.builder
                (
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                      crossAxisCount: 4,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0


                  ),
                  itemBuilder: (BuildContext context, int index)
                  {
                      return Image.network(images[index]);
                  }
                ),
          ),
      );
  }
}

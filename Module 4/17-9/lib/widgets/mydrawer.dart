import 'package:flutter/material.dart';

import '../colors.dart';
import '../main.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
{
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
        margin: EdgeInsets.all(16.0),
        child: Drawer
          (
          backgroundColor: MyColors.drawalBackground,
            child: ListView
              (
                  padding: EdgeInsets.zero,
                  children:
                  [
                    ListTile
                      (
                        title: const Text('Add Category', style: TextStyle(color: Colors.white),
                      ),
                      onTap: ()
                      {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
                      },
                    ),
                    Divider(
                      color: MyColors.drawalDivider,
                      height: 2,
                      thickness: 2,
                    ),

                    ListTile
                      (
                      title: const Text('Add Contact', style: TextStyle(color: Colors.white),
                      ),
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                      },
                    ),
                    Divider(
                      color: MyColors.drawalDivider,
                      height: 2,
                      thickness: 2,
                    ),

                    ListTile
                      (
                      title: const Text('Contact List', style: TextStyle(color: Colors.white),
                      ),
                      onTap: ()
                      {
                        // Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                      },
                    ),


                  ],
              ),
          ),

      );

  }
}

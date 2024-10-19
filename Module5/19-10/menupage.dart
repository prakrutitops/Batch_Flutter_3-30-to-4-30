import 'package:flutter/material.dart';

import 'apiservice.dart';
import 'menuitem.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
{
  late Future<List<MenuItem>> futureMenuItems;

  @override
  void initState() {
    super.initState();
    futureMenuItems = ApiService().fetchMenuItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Items')),
      body: FutureBuilder<List<MenuItem>>(
        future: futureMenuItems,
        builder: (context, snapshot)
        {
          if (snapshot.connectionState == ConnectionState.waiting)
          {
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError)
          {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          else
          {
            final menuItems = snapshot.data!;
            return ListView.builder
              (
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${menuItems[index].menuname}"),
                  subtitle: Text('ID: ${menuItems[index].id}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}

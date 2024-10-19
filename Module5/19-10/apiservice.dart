import 'dart:convert';
import 'package:http/http.dart' as http;

import 'menuitem.dart';


class ApiService {
  final String url = "https://prakrutitech.buzz/Dhaval/selectmenu.php";

  Future<List<MenuItem>> fetchMenuItems() async
  {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200)
    {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => MenuItem.fromJson(json)).toList();
    }
    else
    {
      throw Exception('Failed to load menu items');
    }
  }
}

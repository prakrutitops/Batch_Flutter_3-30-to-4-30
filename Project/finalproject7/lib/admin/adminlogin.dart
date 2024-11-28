import 'dart:convert';

import 'package:finalproject7/admin/front/adminfront.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../user/constants.dart';



class AdminLoginApp extends StatelessWidget {
  const AdminLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eWishes Admin Login',
      theme: ThemeData(
        primaryColor: kDarkBrown,
        scaffoldBackgroundColor: kGrey,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: kBlack),
        ),
      ),
      home: const AdminLoginScreen(),
    );
  }
}

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late SharedPreferences sharedPreferences;
  late bool newuser;
  @override
  void initState()
  {
    // TODO: implement initState

    check_if_already_login();
  }

  void check_if_already_login() async
  {

    sharedPreferences = await SharedPreferences.getInstance();//initialize sharedprefrence
    newuser = sharedPreferences.getBool('ewishesadmin') ?? true;

    if(newuser==false)
    {
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => AdminFront()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkBrown,
        title: const Text(
          'eWishes',
          style: TextStyle(
            color: kGold,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Admin Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: kBrown),
                  filled: true,
                  fillColor: kLightGold,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: kBrown),
                  filled: true,
                  fillColor: kLightGold,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: ()
                {
                    logindata();
                  print('Logged in');
                },
                style: ElevatedButton.styleFrom(
                  primary: kTerracotta,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void logindata()async
  {
    var response = await http.post(
        Uri.parse("https://prakrutitech.buzz/Project_API/adminlogin.php"),
        body:
        {
          "username": _usernameController.text.toString(),
          "password": _passwordController.text.toString(),
        });
    var data = json.decode(response.body);
    if (data == 0)
    {
      print("fail");
      final snackbar = SnackBar(
        content: const Text('Login Fail'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
    else
    {
      print("success");
      final snackbar = SnackBar(
        content: const Text('Login Success'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      sharedPreferences.setBool('ewishesadmin', false);
      sharedPreferences.setString('uname', _usernameController.text.toString());
      Navigator.push(context,MaterialPageRoute(builder: (context) => AdminFront()));

    }
  }
}

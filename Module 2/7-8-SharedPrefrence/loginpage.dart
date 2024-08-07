import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreenex/tts.dart';

class LoginForm extends StatefulWidget
{
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late SharedPreferences sharedPreferences;
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  final mykey = GlobalKey<FormState>();
  late bool newuser;
  late String n;

  @override
  void initState() {
    // TODO: implement initState
    //super.initState();
    checklogin();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title: Text("Form"),),
      body: Form
        (
        key: mykey,
        child: Padding
          (
          padding: EdgeInsets.all(16.00),
          child: Column
            (
            children:
            [

              Text("Contact Form", style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25.00),),

              SizedBox(height: 15),

              TextFormField
                (
                controller: name,
                decoration: InputDecoration
                  (
                  hintText: "Enter Your Name",
                  enabledBorder: OutlineInputBorder
                    (
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide


                      (
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField
                (
                controller: pass,
                obscureText: true,
                decoration: InputDecoration
                  (
                  hintText: "Enter Your Password",
                  enabledBorder: OutlineInputBorder
                    (
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                if (mykey.currentState!.validate()) {
                  n = name.text.toString();
                  String p = pass.text.toString();

                  if (n == "tops@gmail.com" && p == "1234") {
                    sharedPreferences.setBool("mylogin", false);
                    sharedPreferences.setString("myname", n);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => TTS()));
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Logged in succsfully")));
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Credentials")));
                  }
                }
                else {
                  print("Details are not correct");
                }
              },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),)
            ],
          ),

        ),
      ),
    );
  }
  void checklogin() async
  {
    sharedPreferences = await SharedPreferences.getInstance();

    newuser = (sharedPreferences.getBool('mylogin') ?? true);
    print(newuser);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => TTS()));
    }
  }

}



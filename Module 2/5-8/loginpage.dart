import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget
{
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
{

  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
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

              Text("Contact Form",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 25.00),),

              SizedBox(height: 15),

              TextFormField
                (
                controller:name,
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
                validator:(value)
                {
                  if(value!.isEmpty)
                  {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField
                (
                controller:pass,
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
                validator:(value)
                {
                  if(value!.isEmpty)
                  {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: ()
              {


                if(mykey.currentState!.validate())
                {
                  String n = name.text.toString();
                  String p = pass.text.toString();

                  if(n=="tops@gmail.com" && p=="1234")
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Logged in succsfully")));

                  }
                  else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Invalid Credentials")));                              }


                }
                else
                {
                  print("Details are not correct");
                }




              }, child: Text("Login"),style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white),)
            ],
          ),

        ),
      ),
    );
  }
}

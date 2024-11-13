import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'constraints.dart/textfield.dart';
import 'homepage.dart';

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
  final _formkey = GlobalKey<FormState>();
  // text for textfield
  String email = '';
  String name = '';
  String password = '';

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  CollectionReference addUser = FirebaseFirestore.instance.collection('Students2');

  _clearText()
  {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  Future<void> _registerUser()
  {
    return addUser
        .add({'Name': name, 'Email': email, 'Password': password})
        .then((value) => Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage())))
        .catchError((_) => print('Something Error In registering User'));
  }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold
      (
        appBar: AppBar(title: Text("Add Data"),),
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            CustomTextEditField(
              controller: nameController,
              labettxt: 'Name',
            ),
            CustomTextEditField(
              controller: emailController,
              labettxt: 'Email',
              valid: true,
            ),
            CustomTextEditField(
              controller: passwordController,
              labettxt: 'Password',
              visibility: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        name = nameController.text;
                        email = emailController.text;
                        password = passwordController.text;
                        _registerUser();
                        _clearText();
                        Navigator.pop(context);
                      });
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: const Text('Register'),
                ),
                ElevatedButton(
                  onPressed: _clearText,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text('Clear'),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }

}


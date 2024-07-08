import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        actions: [
          IconButton(
              onPressed: () async {
                await _googleSignIn.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _handleSignIn(context);
          },
          child: Text("Login With Gmail"),
        ),
      ),
    );
  }

  void _handleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount? googleaccount = await _googleSignIn.signIn();
      if (googleaccount != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleaccount.authentication;

        final accessToken = googleAuth.accessToken;
        final idToken = googleAuth.idToken;

        print("$accessToken");
        print("$idToken");

        if (accessToken != null) {
          print("Name is :" + googleaccount.displayName.toString());
          print("Name is :" + googleaccount.email.toString());
          print("Name is :" + googleaccount.photoUrl.toString());
        }
      }
    } catch (e) {
      print(e);
    }
  }
}

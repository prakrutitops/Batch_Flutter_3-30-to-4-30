import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../onboarding_screen/onboardingscreen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {

    checkconnection();
  }

  @override
  Widget build(BuildContext context)
  {
    return
      Scaffold(
      backgroundColor: kLightGold,
      body: Center
        (

         child: Image(
          image: AssetImage('images/logo.png'),
          // height: MediaQuery.of(context).size.height - 360,
          // width: MediaQuery.of(context).size.width - 330,
          height: 100,
          width: 100,
          ),
        //),
      ),
    );
  }

  void checkconnection() async
  {
    var connectivityresult = await Connectivity().checkConnectivity();

    if(connectivityresult == ConnectivityResult.mobile)
    {
     Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboarding())));
    }
    else if(connectivityresult == ConnectivityResult.wifi)
    {
     Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboarding())));
    }
    else
    {
        shownetworkerrordialog();
    }
  }

  void shownetworkerrordialog() async
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kGrey,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }
}

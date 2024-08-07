import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';

class TTS extends StatefulWidget
{
  //const TTS({super.key});




  @override
  State<TTS> createState() => _TTSState();
}

class _TTSState extends State<TTS>
{
  TextEditingController data = TextEditingController();
  late FlutterTts flutterTts=FlutterTts();
  String a="";
  String name="";
  late SharedPreferences sharedPreferences;
  
  @override
  void initState() 
  {
    // TODO: implement initState
    //super.initState();
    initial();
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome ${name}"),centerTitle: true,actions:
        [
          IconButton(onPressed: ()
          {

            sharedPreferences.setBool('mylogin', true);
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => LoginForm()));
          }, icon: Icon(Icons.logout))
        ],),
        body: Center
          (
            child: Column
              (
              children:
              [

                  TextField(controller: data,decoration: InputDecoration(hintText: "Please Enter Data"),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {

                       a = data.text.toString();
                      speak();

                  }, child: Text("Speak"))

              ],
              ),
          ),

      );
  }

  void speak() async
  {
    await flutterTts.setVolume(1.0);
    await flutterTts.setSpeechRate(0.6);
    await flutterTts.setPitch(0.6);

    if(a!=null)
    {
      if(a!.isNotEmpty)
        {
          await flutterTts.speak(a!);
        }
    }


  }

  void initial() async
  {
    
      sharedPreferences = await SharedPreferences.getInstance();
      setState(()
      {
        name = sharedPreferences.getString('myname')!;
      });
      
    
  }
}

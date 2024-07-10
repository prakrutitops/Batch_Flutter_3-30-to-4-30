import 'dart:io';

void main()
{
    print("Enter Your Firstname");
    var fname = stdin.readLineSync();

    print("Enter Your Lastname");
    var lname = stdin.readLineSync();

    print("Enter Your Email");
    var email = stdin.readLineSync();

    print("Enter Your Password");
    var pass = stdin.readLineSync();

    //print("welcome "+name);
    //print("welcome $name");

    if(pass == "123456")
    {
      print("Your Firstname is $fname");
      print("Your Lastname is $lname");
      print("Your Email is $email");
      //print("Your Password is $pass");
    }
    else
    {
        print("Invalid Credentials");
    }





}
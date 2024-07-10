import 'dart:io';

void main()
{
    print("Enter Your Firstvalue");
    int a = int.parse(stdin.readLineSync().toString());

    print("Enter Your Secondvalue");
    var b = int.parse(stdin.readLineSync().toString());

    var c= a+b;
    print(c);

}
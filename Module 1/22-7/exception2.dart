import 'dart:io';

void main()
{
  String name="";
  int num=0;

  //try -> logic
  //catch -> error

  try
  {
    print("Enter Your Name");
    name = stdin.readLineSync().toString();

    print("Enter Your Number");
    num = int.parse(stdin.readLineSync().toString());
  }
  catch(e)
  {
      print(e);
  }
  finally
  {
    print("Your name is $name");
    print("Your name is $num");

  }

}
import 'dart:io';

validate(int age)
{
  if(age>18)
  {
    print("Eligible to vote");
  }
  else
  {
    throw Exception("Not Eligible to vote");
  }
}

void main()
{

    validate(12);

}
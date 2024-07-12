//1)with para with return type
int add1(int a,int b)
{
  return a+b;
}

//2)with para without return type
add2(int a,int b)
{
   var c =a+b;
    print(c);
}
//3)with return type without para
int add3()
{
  var a = 6;
  var b = 5;

  return a+b;
}
//4)without para without return type
 add4()
{
  var a = 6;
  var b = 5;
  var c= a+b;
  print(c);
}


void main()
{
  print(add1(6, 5));
  add2(6, 5);
  print(add3());
  add4();
}
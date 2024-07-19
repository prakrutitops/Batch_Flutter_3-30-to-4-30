import 'package:project2/17-7/hierarchicalex.dart';

class RBI
{
  rate()
  {
    return 0;
  }

}
class Sbi extends RBI
{
  rate()
  {
    return 7;
  }

}
class Icici extends RBI
{
  rate()
  {
    return 8;
  }

}
class Axis extends RBI
{
  rate()
  {
    return 9;
  }

}
void main()
{
  RBI r;//refrence variable

  r = Sbi();
  print(r.rate());

  r = Icici();
  print(r.rate());

  r = Axis();
  print(r.rate());



}
class Mycolor
{
  var color ="black";
}
class Mycolor2 extends Mycolor
{
  var color ="white";

  display()
  {
    print(color);//child
    print(super.color);//parent
  }
}
void main()
{
  var m2 = Mycolor2();
  m2.display();

}
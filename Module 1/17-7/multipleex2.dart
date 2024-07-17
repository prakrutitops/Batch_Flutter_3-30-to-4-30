abstract class A
{
   void a();//abstract method // ->which does not have a body part
}
 abstract class B
{
  void b();
}
class C implements A,B
{
  @override
  void a()
  {
    print("a called");
  }

  @override
  void b()
  {
    print("b called");
  }

}
void main()
{
  var c = C();
  c.a();
  c.b();
}
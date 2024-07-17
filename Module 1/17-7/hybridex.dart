class A
{
  void a()
  {

  }
}
abstract class B extends A
{
  void b();
}
abstract class C extends A
{
void c();
}
class D implements B,C
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

  @override
  void c()
  {
    print("c called");
  }

}
void main()
{
  var d = D();
  d.a();
  d.b();
  d.c();

}
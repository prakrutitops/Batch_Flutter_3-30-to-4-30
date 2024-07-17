class A
{
  a()
  {
    print("a called");
  }
}
class B extends A
{
  b()
  {
    print("b called");
  }
}
class C extends B
{
  c()
  {
    print("c called");
  }
}
void main()
{
  var c = C();
  c.a();
  c.b();
  c.c();

}
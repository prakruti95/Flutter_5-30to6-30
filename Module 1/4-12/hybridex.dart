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
abstract class C extends A
{
  c();

}
class D extends B implements C
{
  d()
  {
    print("d called");
  }

  @override
  c()
  {
    print("c called");
  }
}
void main()
{
  var d1 = D();
  d1.a();
  d1.b();
  d1.c();
  d1.d();
}
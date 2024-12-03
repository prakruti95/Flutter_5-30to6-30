class A1
{
     a()
    {
        print("a called");
    }
}
class B1 extends A1
{
   b()
  {
      print("b called");
  }
}
class C1 extends B1
{
  c()
  {
    print("c called");
  }
}
void main()
{

   var c = C1();
   c.a();
   c.b();
   c.c();
}
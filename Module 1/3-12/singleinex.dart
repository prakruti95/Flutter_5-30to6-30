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
void main()
{

    var b = B();

    b.a();
    b.b();
}
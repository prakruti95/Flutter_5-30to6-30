abstract class M
{
    m()
    {

    }

    m1();
}

abstract class N
{
  n()
  {

  }
  n1()
  {

  }
}
class Multiple implements M,N
{
  @override
  m()
  {
    print("m called");
  }

  @override
  m1()
  {
    print("m1 called");
  }

  @override
  n()
  {
    print("n called");
  }

  @override
  n1()
  {
    print("n1 called");
  }

}
void main()
{
  var a1 = Multiple();
  a1.m();
  a1.m1();
  a1.n();
  a1.n1();
}
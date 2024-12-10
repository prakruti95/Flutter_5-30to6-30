abstract class Shape
{
      late int x;
      late int y;

      void a()
      {
          print("a called");
      }
      void b();

}
class Rec extends Shape
{
  @override
  void b()
  {
    print("b called");
  }

}
class Circle extends Shape
{
  @override
  void b()
  {
    print("b called");
  }


}
void main()
{
    var r1 = Rec();
    var c1 = Circle();

    r1.x=10;
    r1.y=20;
    r1.a();
    r1.b();

    print(r1.x);
    print(r1.y);


}
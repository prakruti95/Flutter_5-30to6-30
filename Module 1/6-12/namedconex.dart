class Tops {

  Tops(String name)
  {
    print("Your name $name ");
  }
  //named constructor
  Tops.a(String name,String num)
  {
    print("Your name $name and Your num $num");
  }


}
void main()
{
  var t1 = Tops("raj");
  var t2 = Tops.a("hardik","1234");
}
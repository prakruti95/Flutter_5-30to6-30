class Student3
{
  int id=0;
  String name="";

  //para constructor
  Student3(int id,String name)
  {
      this.id = id;
      this.name = name;
  }

   display()
  {
    print("$id and $name");

  }

}
void main()
{
    var s1 = Student3(101,"ajay");
    var s2 = Student3(102,"vijay");

    s1.display();
    s2.display();
}
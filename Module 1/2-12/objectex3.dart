class Student
{
  //data members or variables
  int id=0;
  String name="";
  String email="";

  //method
  void display()
  {
      print("\n Your id is: $id ,\n Your Name id: $name ,\n Your Email is: $email");
  }

}
void main()
{
    //object
    var s1 = Student();

    //value assign
    s1.id=101;
    s1.name="Ajay";
    s1.email="ajay@gmail.com";

    var s2 = Student();
    s2.id=102;
    s2.name="Vijay";
    s2.email="vijay@gmail.com";

    s1.display();//method call
    s2.display();//method call

}
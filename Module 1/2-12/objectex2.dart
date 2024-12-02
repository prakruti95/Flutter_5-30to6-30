class Student
{
  //data members or variables
  int id=0;
  String name="";
  String email="";

}
void main()
{
    //object
    var s1 = Student();
    s1.id=101;
    s1.name="Ajay";
    s1.email="ajay@gmail.com";

    var s2 = Student();
    s2.id=102;
    s2.name="Vijay";
    s2.email="vijay@gmail.com";

   // print(s1.name+" "+s1.email);
   print("${s1.id},${s1.name},${s1.email}");
   print("${s2.id},${s2.name},${s2.email}");

}
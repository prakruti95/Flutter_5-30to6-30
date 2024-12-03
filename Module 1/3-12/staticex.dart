class Student1
{
    int id=0;
    String name="";
    static String college="XYZ";//static variable

    Student1(int id,String name)
    {
        this.id=id;
        this.name=name;
    }

    display()
    {
      print("Your id is $id and Your name is $name and Your College name is $college");
    }

    static change()
    {
      college="WEWE";
    }
}
void main()
{
    var s1 = Student1(101 , "Abcd");
    var s2 = Student1(102 , "PQRS");

   Student1.change();
   //static method - if you want call static method no need to create an object


    s1.display();
    s2.display();


}
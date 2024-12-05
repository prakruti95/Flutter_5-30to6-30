class Student
{

  var name;
  var surname;
  var email;
  var mob;

  Student(var name,var surname,[var email,var mob])
  {
      this.name=name;
      this.surname=surname;
      this.email=email;
      this.mob=mob;
  }

  void display()
  {
    print("$name and $surname and $email and $mob");
  }


}
void main()
{
    var s1 = Student("a", "a", "a@gmail.com", "1234");
    var s2 = Student("a", "a", "1234");
    var s3 = Student("a", "a");

    s1.display();
    s2.display();
    s3.display();
}
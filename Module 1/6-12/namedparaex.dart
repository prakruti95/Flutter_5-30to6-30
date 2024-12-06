class A
{
  A(String name,{var surname,var email})
  {
      print("Your name is $name and Your Surname is $surname and Your Email is $email");
  }
}
void main()
{
  var a1 = A("raj",email: "r@gmail.com",surname: "xyz");

}
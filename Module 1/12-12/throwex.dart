import 'package:programs2/12-12/MyClass.dart';

class Data1
{
  static validate(int age)
  {
      if(age>18)
      {
          print("eligible to vote");
      }
      else
      {
          throw Myclass();
      }
  }
}

void main()
{
    Data1.validate(16);
}
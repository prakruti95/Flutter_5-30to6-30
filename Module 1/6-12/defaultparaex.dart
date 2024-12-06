import 'dart:io';
import 'dart:math';

class Emp
{
    var status;

  Emp(String name,{int salary = 15000})
  {
      if(salary >= 10000)
      {
        status = "experienced";
        print(status);
      }
      else
      {
          status="fresher";
          print(status);
      }
  }

}
void main()
{
     var salary;
     var name;

    print("Enter Your Name");
    name = stdin.readLineSync().toString();

    // print("Enter Your expected salary");
    // salary = int.parse(stdin.readLineSync().toString());



    var e1 = Emp(name,salary: 25000);


}
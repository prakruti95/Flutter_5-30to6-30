import 'dart:io';
void main()
{
    print("Enter Marks: ");
    var marks = int.parse(stdin.readLineSync().toString());//55

    if(marks>=70)
    {
      print("A Grade");
    }
    else if(marks>=60)
    {
      print("B Grade");
    }
    else if(marks>=50)
    {
      print("C Grade");
    }
    else if(marks>=40)
    {
      print("D Grade");
    }
    else
    {
      print("Fail");
    }


}
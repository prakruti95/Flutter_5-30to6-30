import 'dart:io';

void main()
{


    int total=0;
    print("\n Select 1 For Pizza Rs. 100");
    print("\n Select 2 For Burger Rs. 70");
    print("\n Select 3 For Coffee Rs. 120");

    //String num = stdin.readLineSync().toString();
    int num2 = int.parse(stdin.readLineSync().toString());

    switch(num2)
    {

      case 1:
        total+=100;

      case 2:
        total+=70;

      case 3:
        total+=120;




    }

    print("total bill : "+total.toString());




}
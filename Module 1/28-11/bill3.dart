import 'dart:io';

void main()
{


    int total=0;
    int num2=0;
    int num3=0;
    int num4=0;



    //String num = stdin.readLineSync().toString();
    print("\n Select 1 For Pizza Rs. 100");
     num2 = int.parse(stdin.readLineSync().toString());
    print("\n Select 2 For Burger Rs. 70");
     num3 = int.parse(stdin.readLineSync().toString());
    print("\n Select 3 For Coffee Rs. 120");
     num4 = int.parse(stdin.readLineSync().toString());

    if(num2==0)
    {
          if(num3==2)
          {
              total+=70;
          }
          if(num4==3)
          {
            total+=120;
          }

          print("total bill : "+total.toString());
    }



    // if(num2==1)
    // {
    //   total+=100;
    // }
    // if(num2==2)
    // {
    //   total+=70;
    // }
    // if(num2==3)
    // {
    //   total+=120;
    // }
    // print("total bill : "+total.toString());




}
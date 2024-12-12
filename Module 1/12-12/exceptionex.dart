// try
// catch
// throw
// finally

import 'dart:io';

import 'package:programs2/12-12/MyClass.dart';

void main()
{
    // double data = 10/0;
    // print(data);
    // print("executed1");
    // print("executed2");


    try
    {
      var data = "welcome to tops";
      var fout= File("G://a.txt");
      fout.writeAsString(data);
    }
    catch(e1)
    {
      throw Myclass();
      print(e1);
    }

   // print("success");
}
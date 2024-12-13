import 'package:flutter/material.dart';

void main()
{
 runApp
   (
     MaterialApp
       (
         home:MyApp(),
          debugShowCheckedModeBanner: false,
       ));
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar
            (
              title: Text("Welcome to tops2")
            ),
        );
  }

}

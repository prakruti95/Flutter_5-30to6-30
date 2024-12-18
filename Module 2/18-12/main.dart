import 'package:flutter/material.dart';
import 'package:test11/splashscreen.dart';

void main()
{
  runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: SplashScreen(),
      );
  }
}


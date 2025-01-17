import 'package:flutter/material.dart';
import 'package:sqlitedb2/screens/home.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
      title: 'Flutter Sqflite Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );;
  }
}

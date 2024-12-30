import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:extra/second.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget 
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> 
{

  @override
  void initState()
  {


      checkconnection();



    super.initState();
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: Image.asset("assets/folder.png",width: 200,height: 200,),
          ),
      );
  }

  void checkconnection()async
  {


    var connectivityResult = await (Connectivity().checkConnectivity());
    //print(connectivityResult);
    if(connectivityResult==ConnectivityResult.wifi)
    {
      Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen())));

    }
    else if(connectivityResult==ConnectivityResult.mobile)
    {
      Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen())));

    }
    else
    {
      showcustomdialog();
    }

  }
  Future showcustomdialog()
  {
    return showDialog
      (
        context: context,
        builder:(BuildContext context)
        {
          return AlertDialog
            (
                backgroundColor: Colors.blueGrey,
                title: Row(children: [Icon(Icons.error),Text("\t Network Error")],),
                content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
                actions:
                [
                    ElevatedButton(onPressed: ()
                    {
                      exit(0);//
                    }, child: Text("Exit"))

                ],
            );
        }
    );
    //var alert = AlertDialog();

  }


}


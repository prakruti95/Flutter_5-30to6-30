import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    checkconnection();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (

      );
  }

  void checkconnection()async
  {
    var connectivityresult = await Connectivity().checkConnectivity();

    if(connectivityresult == ConnectivityResult.mobile)
    {

    }
    else if(connectivityresult == ConnectivityResult.wifi)
    {

    }
    else
    {
        shownetworkerrordialog();
    }

  }

  void shownetworkerrordialog() async
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kGrey,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                 exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }
}

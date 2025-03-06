import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/onboarding_screen/onboardingscreen.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';


class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    checkconnection();
    // Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Onboarding()
    //       )));
  }

  void checkconnection()async
  {
    var connectivityresult = await Connectivity().checkConnectivity();

    if(connectivityresult == ConnectivityResult.mobile)
    {
      Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
                 context, MaterialPageRoute(builder: (context) => Onboarding()
              )));
    }
    else if(connectivityresult == ConnectivityResult.wifi)
    {
      Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
                   context, MaterialPageRoute(builder: (context) => Onboarding()
                 )));
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

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
          child:  Lottie.asset('assets/anim.json'),
        ),
      );
  }
}

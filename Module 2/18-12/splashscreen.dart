import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
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
    //super.initState();
    Timer(Duration(seconds:5),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage())));

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (

            child: Lottie.asset("assets/ani.json"),
            //child:Image.asset("assets/tops.png"),
              // (
              //   children:
              //   [
              //
              //
              //     ElevatedButton(onPressed: ()
              //     {
              //         Timer(Duration(seconds:3),() => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())));
              //     }, child: Text("Click to Start"))
              //   ],
              // )

          ),
      );
  }
}


// import 'loginpage.dart';
//
// class SplashScreen extends StatelessWidget
// {
//
//   initstate
//
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold
//       (
//         body: Center
//           (
//             child:Image.asset("assets/tops.png"),
//               // (
//               //   children:
//               //   [
//               //
//               //
//               //     ElevatedButton(onPressed: ()
//               //     {
//               //         Timer(Duration(seconds:3),() => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())));
//               //     }, child: Text("Click to Start"))
//               //   ],
//               // )
//
//           ),
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pageviewex/page.dart';
import 'package:pageviewex/pagebuild.dart';
import 'package:pageviewex/pagecustom.dart';

import 'customized.dart';

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text("PageView Flutter"),),
          body: Center
            (
              child: Column
                (
                  children:
                  [

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton
                        (
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => PageViewTest1()));
                        },
                        child: Text(
                          'PageView Example',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.amber[800],
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageViewBuild()));
                        },
                        child: Text(
                          'PageView.builder Example',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.orange[900],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageViewCustom()));
                        },
                        child: Text(
                          'PageView.custom Example',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(12),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CustomizedPageView()));
                        },
                        child: Text(
                          ' Customized PageView',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.green[800],
                      ),
                    ),

                  ],
                ),
            ),
      );
  }
}

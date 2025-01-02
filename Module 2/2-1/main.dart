import 'dart:math';

import 'package:flutter/material.dart';
import 'package:t3/passdata.dart';
import 'package:t3/switchex.dart';

void main()
{
  runApp(MaterialApp(home:PassData()));
}
class MyApp extends StatefulWidget
{
  String name="";

  MyApp({required this.name});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  var _randomNumber = 0;
  TextEditingController txt = TextEditingController();
  var mynum=0;
  String _message = '';
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    generaterandomnum();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Random Number Player Name- ${widget.name}"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField(controller:txt,decoration: InputDecoration(hintText: "Enter Any Number"),),

                    SizedBox(height: 10,),

                    ElevatedButton(onPressed: ()
                    {
                      mynum = int.parse(txt.text.toString());

                      setState(() {

                        if(mynum == _randomNumber)
                        {
                          _message = 'Congratulations! You guessed the number $_randomNumber!';
                        }
                        else if (mynum < _randomNumber)
                        {
                          _message = 'Try higher!';
                        }
                        else
                        {
                          _message = 'Try lower!';
                        }

                      });




                    }, child: Text("Verify")),
                    SizedBox(height: 10,),
                    Text(_message)

                ],
              ),
          ),
      );
  }

  void generaterandomnum()
  {
    final random = Random();
    _randomNumber = random.nextInt(20) + 1;
    print(_randomNumber);
  }
}


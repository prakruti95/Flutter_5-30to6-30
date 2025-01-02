import 'package:flutter/material.dart';
import 'package:t3/main.dart';

class PassData extends StatefulWidget {
  const PassData({super.key});

  @override
  State<PassData> createState() => _PassDataState();
}

class _PassDataState extends State<PassData> {

  TextEditingController data = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: Column
              (

                children:
                [

                    TextField(controller:data,decoration: InputDecoration(hintText:"Enter Your Name"),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      if(!data.text.toString().isEmpty)
                      {
                        var a = data.text.toString();

                        Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp(name:a)));
                      }
                    }, child: Text("Click Here"))

                ],
              ),
          ),
      );
  }
}

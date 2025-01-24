import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

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

  getdata() async
  {
    var url = Uri.parse("https://simplifiedcoding.net/demos/marvel/");
    var resp = await http.get(url);
    print("Myresponse: ${resp.body.toString()}");
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Marvel Data"),),
        body: FutureBuilder
          (
            future: getdata(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
            {
                if(snapshot.hasError)
                {
                  print("network not found");
                }
                if(snapshot.hasData)
                {
                    return Model(list:snapshot.data);
                }
                return CircularProgressIndicator();
            },

          ),
      );
  }

}

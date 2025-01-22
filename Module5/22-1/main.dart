import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonex/mydata.dart';
import 'package:http/http.dart' as http;
void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{

  getdata()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/AndroidAPI/dashboard_view.php");
    var resp = await http.get(url);
    print("Myresponse: ${resp.body.toString()}");
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Product Category"),),
        body: FutureBuilder
        (
        future: getdata(),

        builder: (BuildContext context, AsyncSnapshot<dynamic?> snapshot)
        {
          if(snapshot.hasError)
          {
            print("Network not found");
          }
          if(snapshot.hasData)
          {
            return MyData(list:snapshot.data);
          }

          return CircularProgressIndicator();
        },


      ),);
  }


}

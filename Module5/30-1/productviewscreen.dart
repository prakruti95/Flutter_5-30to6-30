import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'mydata.dart';

class ProductViewScreen extends StatefulWidget
{
  @override
  State<ProductViewScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ProductViewScreen>
{

  getdata()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productview.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Product View"),),
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

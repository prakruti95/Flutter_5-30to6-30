import 'package:flutter/material.dart';

class MyData extends StatelessWidget
{

   final List list ;
   MyData({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
          itemCount: list.length,
          itemBuilder:(context,index)
          {
            return ListTile
                (
                  //leading: Image.network(list[index]["url"]),
                  title: Text(list[index]["product_name"]),
                );
          }

      );
  }
}

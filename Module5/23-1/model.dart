import 'package:flutter/material.dart';

class Model extends StatelessWidget
{
  final List list;
  Model({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder
      (
        itemCount:list.length,
        itemBuilder:(context,index)
        {
              return ListTile
                (
                  title: Column
                    (
                      children:
                      [
                        Image.network(list[index]["imageurl"],width: 300,height: 300,),
                        Text(list[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text(list[index]["realname"],style: TextStyle(fontSize: 14)),
                        Text(list[index]["team"],style: TextStyle(fontSize: 14)),
                        Text(list[index]["firstappearance"],style: TextStyle(fontSize: 14)),
                        Text(list[index]["createdby"],style: TextStyle(fontSize: 14)),
                        Text(list[index]["publisher"],style: TextStyle(fontSize: 14)),
                        Text(list[index]["bio"],style: TextStyle(fontSize: 12)),


                      ],
                    ),
                );
        }
      );
  }
}

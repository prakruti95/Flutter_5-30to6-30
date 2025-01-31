import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud123/productviewscreen.dart';
import 'package:jsoncrud123/update.dart';
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

                  subtitle:Column
                    (
                      children:
                      [

                          Text(list[index]["product_name"]),
                          Text(list[index]["product_price"]),
                          Text(list[index]["product_description"]),
                      ],
                    ),
                    trailing: Wrap
                      (
                        children:
                        [
                          IconButton(onPressed: ()
                          {
                            Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => UpdateScreen(id:list[index]["id"],pname:list[index]["product_name"],price:list[index]["product_price"],pdes:list[index]["product_description"])));
                          }, icon:Icon(Icons.edit)),
                          IconButton(onPressed: ()
                          {
                            deletedata(list[index]["id"]);
                            Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => ProductViewScreen()));
                          }, icon:Icon(Icons.delete)),
                        ],
                      ),
                );
          }

      );
  }

  void deletedata(id)
  {
      http.post(Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productdelete.php"),
          body:
          {
            "id" : id
          });
  }
}

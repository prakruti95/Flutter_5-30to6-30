import 'package:flutter/material.dart';

class ProductViewModel extends StatelessWidget
{
  final List list;
  ProductViewModel({required this.list});

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
                    title:list[index]["product_name"],
                    subtitle: Column
                      (
                        children:
                        [
                            Text(list[index]["product_price"]),
                            Text(list[index]["product_description"])
                        ],
                      ),
                );
        }
      );
  }
}

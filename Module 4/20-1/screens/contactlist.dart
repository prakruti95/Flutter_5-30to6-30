import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../colors.dart';
import '../database/dbhelper.dart';

class ContactList extends StatefulWidget
{
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList>
{
  final dbHelper = DbHelper.instance;
  List<Map<String, dynamic>> allCategoryData = [];


  @override
  void initState()
  {
    // TODO: implement initState
    _query();
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea
      (
        child: Scaffold
          (
            appBar: AppBar(title: Text("Contact List"),),
            body: Center
              (
                child: Column
                  (
                    children:
                    [
                        Text(""),
                        SizedBox(height: 5),
                        Expanded(child:
                        ListView.builder
                        (
                            itemCount: allCategoryData.length,
                            padding: EdgeInsets.zero,
                            itemBuilder:(_, index)
                            {
                              var item = allCategoryData[index];
                              Uint8List bytes = base64Decode(item['profile']);

                                return Container
                                  (
                                    color: MyColors.orangeTile,
                                    padding: EdgeInsets.zero,
                                    margin: EdgeInsets.zero,
                                    child: Column
                                      (
                                        children:
                                        [
                                          Row
                                            (
                                              children:
                                              [
                                                SizedBox
                                                  (
                                                    width: 20,
                                                  ),
                                                CircleAvatar(child: Image.memory(bytes,fit: BoxFit.cover,),minRadius: 20,maxRadius: 25,),
                                                Text("${item['name']}"),
                                                Text("${item['lname']}"),
                                                Spacer(),
                                                IconButton(
                                                  onPressed: ()
                                                  {
                                                    _delete(item['_id']);
                                                  },
                                                  icon: Icon(Icons.delete),
                                                ),
                                              ],

                                            ),
                                          const Divider(
                                            color: MyColors.orangeDivider,
                                            thickness: 1,
                                          ),
                                        ],
                                      ),
                                  );

                            }


                        ))

                    ],
                  ),
              ),
          ));
  }
  void _query() async
  {
    final allRows = await dbHelper.querycontactRows();
    print('query all rows:');
    allRows.forEach(print);
    allCategoryData = allRows;
    setState(() {});
  }

  void _delete(item) async
  {
    final rowsDeleted = await dbHelper.delete(item);
    print('deleted $rowsDeleted row(s): row $item');
    _query();
  }
}

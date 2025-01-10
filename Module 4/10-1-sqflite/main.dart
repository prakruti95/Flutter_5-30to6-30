import 'package:flutter/material.dart';

import 'add.dart';
import 'db.dart';

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
  late MyDb db = MyDb();
  List<Map> slist = [];
  @override
  void initState()
  {
    // TODO: implement initState
    db.open();
    getdata();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("User Details"),),
        body: SingleChildScrollView
          (
              child: Column
                (
                    children:slist.map((stuone)
                    {
                      return Card
                      (
                        child: ListTile
                          (
                            leading: Icon(Icons.person),
                            title: Text(stuone["fname"]),
                            subtitle: Text("Surname:" + stuone["lname"].toString() + ", Email: " + stuone["email"])
                        ),

                      );

                    }).toList()
                ),
          ),
        floatingActionButton: FloatingActionButton
          (
            onPressed: ()
            {
                Navigator.push(context,MaterialPageRoute(builder: (context) => AddPage()));
            },
            child: Icon(Icons.add),
        ),
      );
  }

  void getdata()
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });

  }

  }



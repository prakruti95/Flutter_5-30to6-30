import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget
{
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("")),
      body:Center
          (
            child: Text(
              'A drawer is an invisible side screen.',
              style: TextStyle(fontSize: 20.0),
            )
        ),
        drawer: Drawer
          (

          child: ListView
                (
            padding: EdgeInsets.zero,
                  children:
                  [

                      UserAccountsDrawerHeader
                        (
                          accountName: Text("Raj"),
                          accountEmail:Text("Raj@gmail.com"),
                          currentAccountPicture: CircleAvatar
                            (
                            child: Text(
                              "R",
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),


                        ),
                        ListTile(
                            leading: Icon(Icons.home),
                            title: Text("Home"),
                            onTap: ()
                            {
                              Navigator.pop(context);
                             },
                          ),
                        ListTile
                          (
                          leading: Icon(Icons.home),
                          title: Text("Home"),
                          onTap: ()
                          {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile
                          (
                          leading: Icon(Icons.home),
                          title: Text("Home"),
                          onTap: ()
                          {
                            Navigator.pop(context);
                          },
                        )



                  ],
                ),
          ),

      );
  }
}

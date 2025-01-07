import 'package:bottomnavbarex/drawerfile.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp2()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('Add Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Delete Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('View Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Update Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("My Bottom Navigation"),),
        body: Center
          (
          child: _widgetOptions.elementAt(_selectedIndex),
          ),
        bottomNavigationBar:
        BottomNavigationBar(items:
        [
            BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add Data",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.delete),label: "Remove Data",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.view_agenda_outlined),label: "View Data",backgroundColor: Colors.blueGrey),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: "Update Data",backgroundColor: Colors.blueGrey),
        ],

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        iconSize: 40,
        elevation: 5,
        currentIndex: _selectedIndex,
        onTap: _onchange,

        ),
      floatingActionButton: FloatingActionButton
        (
          onPressed: ()
          {
              print("data1");
          },
          child: Icon(Icons.add),
      ),
      );
  }

  void _onchange(int value)
  {
    setState(()
    {
        _selectedIndex = value;
    });
  }
}

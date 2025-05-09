import 'package:flutter/material.dart';
import '../colors.dart';
import '../screens/addcontact.dart';
import '../screens/home.dart';

class MyDrawer extends StatelessWidget
{
  const MyDrawer({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 55),
      child: Drawer(
        backgroundColor: MyColors.drawalBackground,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text(
                'Add Category',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
            ),
            Divider(
              color: MyColors.drawalDivider,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              title: const Text(
                'Add Contact',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => AddContact()));
              },
            ),
            Divider(
              color: MyColors.drawalDivider,
              height: 2,
              thickness: 2,
            ),
            ListTile(
              title: const Text(
                'Contact List',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_) => ContactList()));
              },
            ),
            Divider(
              color: MyColors.drawalDivider,
              height: 2,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sqlitedb1/db.dart';
import 'package:sqlitedb1/main.dart';

class AddPage extends StatefulWidget
{
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  late MyDb db = MyDb();

  @override
  void initState() {
    // TODO: implement initState
    db.open();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add User Details"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField
                      (
                      controller: fname,
                      decoration: InputDecoration
                        (
                          hintText: "Enter Firstname"
                      ),
                      ),
                     SizedBox(height: 50),


                  TextField
                    (
                    controller: lname,
                    decoration: InputDecoration
                      (
                        hintText: "Enter Lastname"
                    ),
                  ),

                  SizedBox(height: 50),

                  TextField
                    (
                    controller: email,
                    decoration: InputDecoration
                      (
                        hintText: "Enter Email"
                      ),
                  ),

                  SizedBox(height: 50),

                  ElevatedButton(onPressed: ()
                  {
                    var n = fname.text.toString();
                    var l = lname.text.toString();
                    var e = email.text.toString();

                    db.db.rawInsert("insert into students (fname,lname,email) values (?,?,?)",[n,l,e]);
                    Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));

                  }, child: Text("INSERT"))


                ],
              ),
          ),
      );
  }
}

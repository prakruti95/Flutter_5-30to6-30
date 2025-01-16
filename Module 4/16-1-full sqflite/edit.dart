import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sqlitedb1/db.dart';
import 'package:sqlitedb1/main.dart';

class EditPage extends StatefulWidget
{
    String email;

    EditPage({required this.email});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage>
{

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();

  late MyDb db = MyDb();


  @override
  void initState()
  {
    // TODO: implement initState
    db.open();

    Future.delayed(Duration(milliseconds: 500),()async
    {
      var data = await db.getstudent(widget.email);
      if(data!=null)
      {
        fname.text = data["fname"];
        lname.text = data["lname"].toString();
        email.text = data["email"];
        setState(() {});
      }
      else
      {
        print("No any data with Email : " + widget.email.toString());
      }

    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Email is ${widget.email}"),),
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

              db.db.rawInsert("update students set fname=?,lname=?,email=? where email=?",[n,l,e,widget.email]);
              Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));

            }, child: Text("Updated"))


          ],
        ),
      ),
      );
  }
}

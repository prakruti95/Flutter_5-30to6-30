import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test11/dashbaord.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
{

  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  var newuser;
  late SharedPreferences sharedPreferences;
  @override
  void initState()
  {
    // TODO: implement initState
  //  super.initState();

    checklogin();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Center
          (
              child: Column
                (
                  children:
                  [

                      TextField(

                        controller:name ,
                        decoration:InputDecoration
                        (
                          label: Text("Name"),
                          hintText: "Enter Name",
                          icon: Icon(Icons.person)
                        ),
                      ),

                    SizedBox(height: 15),

                    TextField(
                      controller:pass ,
                      decoration:InputDecoration
                        (
                          label: Text("Password"),
                          hintText: "Enter Password",
                          icon: Icon(Icons.lock)
                        ),
                    ),

                    SizedBox(height: 15),

                    ElevatedButton(onPressed: ()
                    {

                      var a1 = name.text.toString();
                      var b1 = pass.text.toString();

                      if(a1.length==0 && b1.length==0)
                      {
                        Fluttertoast.showToast
                          (
                          msg: "Please Fill Proper Value",
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb:3,
                          gravity: ToastGravity.CENTER,
                          fontSize: 16.0,
                          //textColor: Colors.black,

                        );
                      }

                      else if(name.text.toString()=="tops" && pass.text.toString()=="1234")
                      {

                        //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                        //print("success");
                        // Fluttertoast.showToast
                        //   (
                        //     msg: "Login Success",
                        //     toastLength: Toast.LENGTH_LONG,
                        //     timeInSecForIosWeb:3,
                        //     gravity: ToastGravity.CENTER,
                        //     fontSize: 16.0,
                        //     //textColor: Colors.black,
                        //
                        //   );

                        sharedPreferences.setBool("tops", false);
                        sharedPreferences.setString("n1", a1);
                        sharedPreferences.setString("p1", b1);


                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));

                      }
                      else
                      {
                        //print("fail");
                        //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));
                        Fluttertoast.showToast(msg: "Login Fail");
                      }
                    }, child: Text("Login"))


                  ],
                ),
          ),

    );
  }

  void checklogin()async
  {

    sharedPreferences = await SharedPreferences.getInstance();

    newuser = (sharedPreferences.getBool('tops') ?? true);
    print(newuser);

    if(newuser == false)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
    }

  }
}

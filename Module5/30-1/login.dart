import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsoncrud123/signup.dart';
import 'package:http/http.dart' as http;

import 'dashboard.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
        (
          appBar: AppBar(title: Text("Login Screen"),backgroundColor: Colors.blueGrey

        ),
      body: Container
        (
          margin:EdgeInsets.all(20.0),
          padding: EdgeInsets.all(10.0),
            child: Column
              (

                children:
                [
                    SizedBox(height: 20,),
                    SizedBox(height: 20,),
                  TextField
                    (
                      controller: email,
                      decoration: InputDecoration
                        (
                        hintText: "Enter Email",
                        enabledBorder: const OutlineInputBorder
                          (
                          borderSide: const BorderSide
                            (
                            color: Colors.blue,
                            width: 3.0,


                          ),

                        ),
                        focusedBorder: OutlineInputBorder
                          (
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1,color: Colors.orange),
                        ),
                      )
                  ),
                  SizedBox(height: 10,),
                  TextField
                    (
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration
                        (
                        hintText: "Enter Password",

                        enabledBorder: const OutlineInputBorder
                          (
                          borderSide: const BorderSide
                            (
                            color: Colors.blue,
                            width: 3.0,


                          ),

                        ),
                        focusedBorder: OutlineInputBorder
                          (
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1,color: Colors.orange),
                        ),
                      )
                  ),
                  SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                            login();
                      }, child: Text("Login")),
                  SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SignupScreen()));
                    }, child: Text("Do you want to Signup?")),

                ],
              ),
        ),
      );
  }

  void login()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/signin.php");
    var response = await http.post(url,
        body:
        {
        "email": email.text.toString(),
        "password": pass.text.toString()
      });
    var data = json.decode(response.body);

    if(data==0)
    {
      print("fail");

    }
    else
    {
      //print("success");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()),);
    }
  }
}

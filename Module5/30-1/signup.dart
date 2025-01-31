import 'package:flutter/material.dart';
import 'package:jsoncrud123/login.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget
{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
{
  TextEditingController fname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Signup Screen"),backgroundColor: Colors.blueGrey

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
              controller: fname,
              decoration: InputDecoration
                (
                  hintText: "Enter Firstname",
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
                signup();
            }, child: Text("Signup")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen()));
            }, child: Text("Do you want to Login?")),

          ],
        ),
      ),
    );
  }

   signup()
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/signup.php");
    http.post(url,body:
    {
      "firstname" : fname.text.toString(),
      "email" : email.text.toString(),
      "password" : pass.text.toString()
    });
  }
}

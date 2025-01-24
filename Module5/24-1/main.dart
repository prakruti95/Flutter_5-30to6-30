import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Insert Data"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField(controller: fname),
                    SizedBox(height: 10,),
                    TextField(controller: lname),
                    SizedBox(height: 10,),
                    TextField(controller: phone),
                    SizedBox(height: 10,),
                    TextField(controller: gender),
                    SizedBox(height: 10,),
                    TextField(controller: email),
                    SizedBox(height: 10,),
                    TextField(controller: pass),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      /*  if()
                          {

                          }
                      */
                        insertdata();

                    }, child: Text("Insert Data"))


                ],
              ),
          ),

    );
  }

  void insertdata()async
  {
     var url = Uri.parse("https://prakrutitech.buzz/AndroidAPI/user_signup.php");
     http.post(url,body:
     {
       "user_first_name" : fname.text.toString(),
       "user_last_name" : lname.text.toString(),
       "user_email" : email.text.toString(),
       "user_phone" : phone.text.toString(),
       "user_gender" : gender.text.toString(),
       "user_password" : pass.text.toString(),

     });

     print("inserted");
  }
}

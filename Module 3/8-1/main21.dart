import 'package:flutter/material.dart';

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

    TextEditingController name = TextEditingController();
    TextEditingController pass = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
          appBar: AppBar(title: Text(""),),

          body: Form
          (
              key: _formKey,
               child: Column
                 (
                  children:
                  [

                      TextFormField
                        (
                        controller:name,
                        decoration: InputDecoration(hintText: "Enter Name"),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField
                        (
                          controller:pass,
                          decoration: InputDecoration(hintText: "Enter Password"),
                          obscureText: true,
                          validator: (value)
                          {
                            if (value!.isEmpty)
                            {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                        if (_formKey.currentState!.validate())
                        {
                            print("Go Further");
                        }
                        else
                        {
                          print("Details Missing");
                        }
                      }, child: Text("Login")
                      )



                  ],
                ),
          ),
      );
  }
}

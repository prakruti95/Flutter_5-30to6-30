import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}



class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

enum genderselection { male, female }
class _MyAppState extends State<MyApp>
{
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  //Gender _selectedgender = Gender.Male;
  genderselection _gender = genderselection.male;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Checkbox Example"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    CheckboxListTile
                      (
                        secondary: const Icon(Icons.alarm),
                        title: const Text('Ringing at 4:30 AM every day'),
                        subtitle: Text('Ringing after 12 hours'),
                        value: valuefirst,
                        onChanged: (bool? value)
                        {
                          setState(() {

                                this.valuefirst = value!;
                                print("First : $value");
                          });


                        },

                      ),
                  CheckboxListTile
                    (
                    secondary: const Icon(Icons.alarm),
                    title: const Text('Ringing at 4:30 AM every day'),
                    subtitle: Text('Ringing after 12 hours'),
                    value: valuesecond,
                    onChanged: (bool? value)
                    {
                            setState(() {

                              this.valuesecond = value!;
                              print("Second : $value");


                            });
                    },

                  ),

                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                      value: genderselection.male,
                      groupValue: _gender,
                      onChanged: (genderselection? value) {
                        setState(()
                        {
                          _gender = value!;

                          print("$_gender");
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                      value: genderselection.female,
                      groupValue: _gender,
                      onChanged: (genderselection? value) {
                        setState(() {
                          _gender = value!;
                          print("$_gender");
                        });
                      },
                    ),
                  )


                ],

              ),
          ),

      );
  }
}

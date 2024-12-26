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

  var pizza=false;
  var burger=false;
  var coffee=false;
  var total = 0;
  //var pizza=100;
  var bill1 = "";


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Cafe Ordering System"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                    CheckboxListTile
                      (
                          title: Text("Pizza"),
                          subtitle: Text("Rs.100"),
                          value: pizza,
                          onChanged: (bool? value)
                          {
                            setState(()
                            {
                              this.pizza=value!;
                              print(value);


                              // if(value==true)
                              // {
                              //   total-=100;
                              // }
                              // else
                              // {
                              //   this.pizza=value!;
                              //   bill1+="\n Pizza @ Rs.100";
                              //   total+=100;
                              // }


                            });

                          },

                       ),

                  CheckboxListTile
                    (
                    title: Text("Burger"),
                    subtitle: Text("Rs.70"),
                    value: burger,
                    onChanged: (bool? value)
                    {

                      setState(() {

                        this.burger=value!;
                        print(value);
                       // bill1+="\n Burger @ Rs.70";
                        //total+=70;

                      });

                    },

                  ),

                  CheckboxListTile
                    (
                    title: Text("Coffee"),
                    subtitle: Text("Rs.120"),
                    value: coffee,
                    onChanged: (bool? value)
                    {
                      setState(() {

                        this.coffee=value!;
                        print(value);
                        //bill1+="\n Coffee @ Rs.120";
                        //total+=120;
                      });

                    },

                  ),

                  ElevatedButton(onPressed: ()
                  {
                    // setState(() {
                    //
                    //
                    //
                    // });
                    // if(pizza==true)
                    // {
                    //     total+=100;
                    // }
                    // if(burger==true)
                    // {
                    //
                    // }
                    // if(coffee==true)

                      print("\n Total Bill is : $bill1 \n $total");
                  }, child: Text("Order"))

                ],
              ),
          ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test11/loginpage.dart';

class Dashboard extends StatefulWidget
{
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
{


  var data;
  late SharedPreferences sharedPreferences;
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    initital();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(
                title: Text("Welcome $data"),
                actions: 
                [
                    IconButton(onPressed: ()
                    {

                      sharedPreferences.setBool('tops', true);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));

                    }, icon: Icon(Icons.logout))

                  
                ],
          ),
          body: Center
            (
                child: 
                  GestureDetector
                  (
                     onTap: ()
                     {
                        print("clicked");
                     },
                    child: Image.network("https://assets.indiaonline.in/businessimg/gallery/650/3105650_ec6dc.png"),
                  ),
              
            ),
      
      
      
      );
  }

  void initital()async
  {

    sharedPreferences = await SharedPreferences.getInstance();
    setState(()
    {

      data = sharedPreferences.getString('n1')!;

    });

  }
}

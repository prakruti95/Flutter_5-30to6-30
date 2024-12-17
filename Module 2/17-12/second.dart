import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatelessWidget {

  //const SecondScreen({super.key});

  var num = "9988998899";

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(
            title: Text("Second Screen"),
            actions: 
            [
              Icon(Icons.call)
            ],
          ),
        body: Center
          (
          child:Column
            (
              children:
              [ 
                
               
                
                ElevatedButton(onPressed: ()
                {
                  call(num);


                }, child: Text("Call us"),),

                ElevatedButton(onPressed: ()
                {
                  sms(num);


                }, child: Text("SMS"),),


              ],
            )

          ),
      );
  }

  void call(String num)
  {

    var mynum = Uri.parse("tel:9988998899");
    launchUrl(mynum);
    // if(await canLaunchUrl(mynum))
    // {
    //
    // }
    // else
    // {
    //     print("error");
    // }

  }

  void sms(String num)
  {

    var mynum = Uri.parse("sms:$num");
    launchUrl(mynum);
    // if(await canLaunchUrl(mynum))
    // {
    //
    // }
    // else
    // {
    //     print("error");
    // }

  }
}

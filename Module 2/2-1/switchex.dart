import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  const SwitchEx({super.key});

  @override
  State<SwitchEx> createState() => _SwitchExState();
}

class _SwitchExState extends State<SwitchEx>
{
  bool isSwitched = false;
  var textValue = 'Switch is OFF';


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Center
          (
            child: Column
              (
                children:
                [
                  Switch
                    (
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.yellow,
                      inactiveThumbColor: Colors.redAccent,
                      inactiveTrackColor: Colors.orange,
                      value: isSwitched,
                      onChanged:toggleSwitch

                     ),

                  SizedBox(height: 10,),

                  Text(textValue)

                ],
              ),
          ),
      );
  }

  void toggleSwitch(bool value)
  {

    if (isSwitched == false)
    {
      setState(()
      {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(()
      {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }

  }
}

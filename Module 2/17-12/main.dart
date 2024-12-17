import 'package:firstapp23/second.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(MaterialApp(home: FirstScreen(),));
}
class FirstScreen extends StatelessWidget
{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Tops Technologies"),),
        body: Center
          (
            child: SingleChildScrollView
              (
                child: Column(
                  children: 
                  [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s") ,
                      Text("Flutter"),
                      Image.network("https://lh3.googleusercontent.com/LYUDWiiqyTSiwzbPsJnYhfTzA3kUAoYgRy_1mpKTZOuLtpaMTaNdPKm8Xesm5mxA_zUSIGy6RO4PxhUnIDgTgbmroxgVpudnc0XKWW0cByZXppI2WGo") ,
                      Text("Android"),
                      Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ac/IOS-Emblem.jpg") ,
                      Text("Ios"),
                      Image.network("https://lh3.googleusercontent.com/LYUDWiiqyTSiwzbPsJnYhfTzA3kUAoYgRy_1mpKTZOuLtpaMTaNdPKm8Xesm5mxA_zUSIGy6RO4PxhUnIDgTgbmroxgVpudnc0XKWW0cByZXppI2WGo") ,
                      Text("Android"),
                      Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ac/IOS-Emblem.jpg") ,
                      Text("Ios"),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: ()
                      {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                      }, child: Text("click here"))
                    
                  ],
              ),
            )
          ),
      );
  }
}





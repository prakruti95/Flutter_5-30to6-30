import 'dart:ffi';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Container Example"),),
      

      //--------------------------------2-----------------------
        body: Center
          (
            child:SingleChildScrollView
            (
              child:Column
                (
                children:
                [
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150),
                  Image.network("https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?cs=srgb&dl=pexels-pixabay-356056.jpg&fm=jpg",width: 200,height: 150)

                ],
                 ),
            )
        ),
        floatingActionButton: FloatingActionButton
          (
            onPressed: ()
            {

                print("clicked");

            },
            child: Icon(Icons.add),

          ),
    );

    //-------------------1--------------------------------

    //   body: Container
    //     (
    //   height: 200,
    //   width: double.infinity,
    //   //color: Colors.purple,
    //   alignment: Alignment.center,
    //   margin: const EdgeInsets.all(40),
    //   padding: const EdgeInsets.all(40),
    //   decoration: BoxDecoration
    //     (
    //       border: Border.all(color: Colors.black, width: 10),
    //     ),
    //   child: const Text("Hello! i am inside a container!",
    //       style: TextStyle(fontSize: 20)),
    //
    //
    // ),);
  }
}


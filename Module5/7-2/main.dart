import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    final Future<FirebaseApp> _initailization = Firebase.initializeApp();

    return FutureBuilder
      (
        future:_initailization,
        builder:(context, snapshot)
        {
            if(snapshot.hasError)
            {
                print("something went wrong");
            }

            if (snapshot.connectionState == ConnectionState.done)
            {
              return MaterialApp
                (
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  appBarTheme: const AppBarTheme(
                    centerTitle: true,
                  ),
                ),
                home: const HomePage(),
              );
            }



            return CircularProgressIndicator();
        }
      ) ;
  }
}


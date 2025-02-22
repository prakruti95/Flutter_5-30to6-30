import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async
{
  print("Handling a background message: ${message.messageId}");
}
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
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
  String? token;


  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    _requestPermission();
    _getToken();
    _setupForegroundMessaging();
   // print("$token");
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("FCM"),),
        body:
        Center
        (
          child:Column
            (
              children:
              [
                  ElevatedButton(onPressed: ()
                  {
                    print("$token");
                  }, child: Text("Click")),

                  Text('FCM Token: $token'),
              ],
            )


        ),
      );
  }

  Future<void> _requestPermission()async
  {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  Future<void> _getToken() async
  {
    try
    {
      token = await FirebaseMessaging.instance.getToken();
    }
    catch(e)
    {
        print(e);
    }

  }

  void _setupForegroundMessaging()
  {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Received a message in the foreground: ${message.notification?.title}");
    });
  }


}

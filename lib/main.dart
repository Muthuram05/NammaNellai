// @dart=2.9

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scad/home.dart';
import 'package:scad/register.dart';

import 'login.dart';
//yZcQd1PPj9Uo76rAG2cSyE5VPdM2

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
final navigatorKey = GlobalKey<NavigatorState>();
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {
  const MainPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    body:StreamBuilder<User>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError){
          return const Center(child: Text("Something Went Wrong"),);
        }
        else if(snapshot.hasData){
          return MyHomePage();
        }
        else{
          return Register();
        }

      }
    )
  );

}



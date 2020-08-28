import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarvadnya',
      theme: ThemeData(
      primarySwatch: Colors.red,
      accentColor: new Color(0xff25D366),
      tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          ),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white,fontSize: 5.0,),
          body1: TextStyle(color: Colors.black),
          button: TextStyle(color:Colors.white),
          ),
          bottomAppBarColor: Colors.white,
      
      ),
      home:Home(),
    );
  }
}



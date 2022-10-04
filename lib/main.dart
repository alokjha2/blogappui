import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uiblog/bottombar.dart';
import 'package:uiblog/homeScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
  ));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BottomNavBar(0),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: 
      ),
    );
  }
}



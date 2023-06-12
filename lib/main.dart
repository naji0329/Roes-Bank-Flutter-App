import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rosebank/Screens/splash.dart';


void main() async{


  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: const SplashScreen(),
    );
  }
}

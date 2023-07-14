// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:rosebank/Screens/splash.dart';
import 'package:rosebank/Screens/TransitionScreen.dart';
import 'package:rosebank/Screens/add_new_card.dart';
import 'package:rosebank/Screens/bill payment Detail.dart';
import 'package:rosebank/Screens/bill_payemnt.dart';
import 'package:rosebank/Screens/home.dart';
import 'package:rosebank/Screens/insurance detail.dart';
import 'package:rosebank/Screens/insurance.dart';
import 'package:rosebank/Screens/login.dart';
import 'package:rosebank/Screens/mycard.dart';
import 'package:rosebank/Screens/onboard.dart';
import 'package:rosebank/Screens/register.dart';
import 'package:rosebank/Screens/verification.dart';
import 'package:rosebank/Screens/welcome.dart';

void main() async {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

GoRouter buildRouter(Widget InitialScreen) {
  return GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => InitialScreen),
    GoRoute(path: '/signin', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => RegisterScreen()),
    GoRoute(
        path: '/verify-email/:email',
        name: 'EmailVerify',
        builder: (context, state) => VerificationrScreen(
              email: state.pathParameters['email'],
            )),
    // GoRoute(path: path)
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget initialScreen = const SplashScreen();

    return MaterialApp.router(
        routerConfig: buildRouter(initialScreen), color: Colors.white);
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner:false,
  //     home: const SplashScreen(),
  //   );
  // }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rosebank/Screens/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return OnboardingScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: height * 1,
            width: width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/rosebank.png",
                  height: height * 0.143,
                ),
              ],
            ),
          ),
          Positioned(
              width: MediaQuery.of(context).size.width * 1,
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  child: const CircularProgressIndicator(
                    backgroundColor: Colors.black,
                    color: Colors.grey,
                    strokeWidth: 2,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

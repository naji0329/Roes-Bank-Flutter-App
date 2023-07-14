import 'package:flutter/material.dart';
import 'package:rosebank/Screens/login.dart';
import 'package:rosebank/Screens/register.dart';
import 'package:rosebank/Screens/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height * 1,
        width: width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/Mobile login-amico 1.png",
              height: height * 0.25,
              fit: BoxFit.fill,
            ),
            SizedBox(height: height * 0.05),
            Image.asset("images/rosebank.png", height: height * 0.14),
            SizedBox(height: height * 0.125),
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
                child: MyPinlkButton(
                  title: 'Create An Account',
                )),
            SizedBox(height: height * 0.025),
            InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: MyWhiteButton(
                  title: 'Sign in',
                )),
          ],
        ),
      ),
    );
  }
}

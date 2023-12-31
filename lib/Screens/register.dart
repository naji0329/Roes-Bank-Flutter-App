import 'package:flutter/material.dart';
import 'package:rosebank/Screens/login.dart';
import 'package:rosebank/Screens/verification.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/style.dart';
import 'package:rosebank/utils/toast.dart';
import 'package:rosebank/utils/api.dart';
import 'package:rosebank/utils/factories.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  FocusNode? email = FocusNode();
  FocusNode? username = FocusNode();
  FocusNode? password = FocusNode();

  bool isLoading = false;

  String? errorText;

  void submit() async {
    try {
      if (isLoading) return;
      setState(() {
        errorText = null;
        isLoading = true;
      });

      Response res = await ApiClient.signUp(
          _usernameController.value.text,
          _emailController.value.text,
          _passwordController.value.text,
          _passwordController.value.text);
      if (res.success != true) {
        setState(() {
          errorText = 'User is already existed';
          print(errorText);
        });
      } else {
        // print(res.data['sessionid']);
        // showToast(res.data['sessionid'], status: ToastStatus.error);
        // print()
        // print("success");

        // context.goNamed("EmailVerify",
        //     pathParameters: {'email': _emailController.value.text});
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return VerificationrScreen(email: _emailController.value.text);
        }));

        // SharedPreferences prefs = await SharedPreferences.getInstance();
        // await prefs.setString('access_token', res.data['token']['access']);
        // await prefs.setString('username', res.data['username']);
        // await prefs.setBool('isActivate', res.data['isActivated']);
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      isLoading = false;
      errorText = "Something went wrong";
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: height * 0.05),
          Center(
              child: Image.asset(
            "images/E-Wallet-pana 1.png",
            height: height * 0.19,
            fit: BoxFit.fill,
          )),
          SizedBox(height: height * 0.025),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "JOIN Now".toUpperCase(),
              style: mystyle.get_sf_text(FontWeight.w400, height * 0.014),
            ),
          ),
          SizedBox(height: height * 0.018),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "Create Account".toUpperCase(),
              style: mystyle.get_sf_bold(FontWeight.w700, height * 0.025),
            ),
          ),
          SizedBox(height: height * 0.05),
          Container(
            margin: EdgeInsets.only(left: width * 0.025, right: width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: height * 0.068,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(38, 115, 289, 0.08)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfff8fafd)),
                    child: Row(
                      children: [
                        Image.asset("images/google.png",
                            height: height * 0.021),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Text(
                          "Create with Google".toUpperCase(),
                          style: mystyle.get_sf_text(
                              FontWeight.w400, height * 0.013),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: height * 0.068,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(38, 115, 289, 0.08)),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfff8fafd)),
                    child: Row(
                      children: [
                        Image.asset("images/apple.png", height: height * 0.021),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Text(
                          "Create with Apple".toUpperCase(),
                          style: mystyle.get_sf_text(
                              FontWeight.w400, height * 0.013),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.025),
          Center(
            child: Column(children: [
              Text(
                "Or Create Using Email",
                style: mystyle.get_sf_text(FontWeight.w400, height * 0.015),
              ),
              if (errorText != null)
                Text(
                  errorText.toString(),
                  style: mystyle
                      .get_sf_text(FontWeight.w400, height * 0.015)
                      .copyWith(color: Colors.red),
                ),
            ]),
          ),
          SizedBox(height: height * 0.025),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: username!.hasFocus
                        ? const Color(0xff2673D1)
                        : const Color.fromRGBO(0, 0, 0, 0.15))),
            child: TextField(
              controller: _usernameController,
              focusNode: username,
              onEditingComplete: () {},
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person,
                          color: username!.hasFocus
                              ? const Color(0xff2673D1)
                              : const Color.fromRGBO(0, 0, 0, 0.15))
                    ],
                  ),
                  hintText: "Username",
                  hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(
                      FontWeight.w400, height * 0.014)),
            ),
          ),
          SizedBox(height: height * 0.025),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: email!.hasFocus
                        ? const Color(0xff2673D1)
                        : const Color.fromRGBO(0, 0, 0, 0.15))),
            child: TextField(
              controller: _emailController,
              focusNode: email,
              onEditingComplete: () {},
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/email.png",
                        color: email!.hasFocus
                            ? const Color(0xff2673D1)
                            : const Color.fromRGBO(0, 0, 0, 0.15),
                        height: height * 0.02,
                      ),
                    ],
                  ),
                  hintText: "Email",
                  hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(
                      FontWeight.w400, height * 0.014)),
            ),
          ),
          SizedBox(height: height * 0.025),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: password!.hasFocus
                        ? const Color(0xff2673D1)
                        : const Color.fromRGBO(0, 0, 0, 0.15))),
            child: TextField(
              controller: _passwordController,
              focusNode: password,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.visibility,
                          color: password!.hasFocus
                              ? const Color(0xff2673D1)
                              : const Color.fromRGBO(0, 0, 0, 0.15))
                    ],
                  ),
                  hintText: "Password",
                  hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(
                      FontWeight.w400, height * 0.014)),
            ),
          ),
          SizedBox(height: height * 0.025),
          InkWell(
              onTap: () {
                final RegExp regex =
                    RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (!regex.hasMatch(_emailController.value.text)) {
                  showToast("Please input valid email",
                      status: ToastStatus.error);
                } else {
                  // GoRouter.of(context).go('/verify-email',  pathParameters: {'email ': _emailController.value.text})
                  submit();
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return VerificationrScreen(
                  //       email: _emailController.value.text);
                  // }));
                }
              },
              child: const MyPinlkButton(
                title: 'Create an Account',
              )),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have a Account? ",
                style: mystyle.get_sf_text(FontWeight.w400, height * 0.014),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: Text(
                  "Sign in".toUpperCase(),
                  style: mystyle.get_sf_text(FontWeight.w600, height * 0.014),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

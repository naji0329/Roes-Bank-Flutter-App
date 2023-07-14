import 'dart:async';
import 'package:rosebank/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:rosebank/Screens/home.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/style.dart';
import 'package:rosebank/utils/api.dart';
import 'package:rosebank/utils/factories.dart';

class VerificationrScreen extends StatefulWidget {
  String? email;
  VerificationrScreen({Key? key, required this.email}) : super(key: key);

  @override
  State<VerificationrScreen> createState() => _VerificationrScreenState();
}

class _VerificationrScreenState extends State<VerificationrScreen> {
  // FocusNode? email = FocusNode();
  final _digit1Controller = TextEditingController();
  final _digit2Controller = TextEditingController();
  final _digit3Controller = TextEditingController();
  final _digit4Controller = TextEditingController();

  FocusNode? digit1FocusNode;
  FocusNode? digit2FocusNode;
  FocusNode? digit3FocusNode;
  FocusNode? digit4FocusNode;

  int _countdownSeconds = 25;
  bool _countdownFinished = false;

  void _startTimer() {
    _countdownSeconds = 25;
    _countdownFinished = false;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (_countdownSeconds > 0) {
          _countdownSeconds--;
        } else {
          _countdownFinished = true;
          timer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    digit1FocusNode = FocusNode();
    digit2FocusNode = FocusNode();
    digit3FocusNode = FocusNode();
    digit4FocusNode = FocusNode();
    _startTimer();
  }

  bool isLoading = false;
  String? errorText;

  void submit() async {
    String? code;
    code = _digit1Controller.value.text +
        _digit2Controller.value.text +
        _digit3Controller.value.text +
        _digit4Controller.value.text;
    if (code.length < 4) {
      showToast("Input Code", status: ToastStatus.error);
      return;
    }
    print(code);
    try {
      if (isLoading) return;
      setState(() {
        errorText = null;
        isLoading = true;
      });

      Response res = await ApiClient.verifyEmail(code);
      if (res.success != true) {
        setState(() {
          errorText = res.message;
          print(errorText);
        });
      } else {
        // Navigator.of(context).push(MaterialPageRoute(builder: (context)
        // {return HomeScreen();}));
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }));
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e.toString());
      setState(() {
        isLoading = false;
        errorText = "Something went wrong";
        print(errorText);
      });
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
            "images/Confirmed-rafiki 1.png",
            height: height * 0.3,
            fit: BoxFit.fill,
          )),
          SizedBox(height: height * 0.01),
          Center(
            child: Text(
              "Your funds under quality defence",
              style:
                  mystyle.get_sf_text_F6C8D8(FontWeight.w500, height * 0.017),
            ),
          ),
          SizedBox(height: height * 0.025),
          Container(
            margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Text(
              "A 4- digits code has been sent to your Email ${widget.email} ",
              style: mystyle.get_sf_text(FontWeight.w400, height * 0.019),
            ),
          ),
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.15,
                height: height * 0.075,
                margin: EdgeInsets.only(
                  left: width * 0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: digit1FocusNode!.hasFocus
                            ? const Color(0xff2673D1)
                            : const Color.fromRGBO(0, 0, 0, 0.15))),
                child: TextField(
                  controller: _digit1Controller,
                  focusNode: digit1FocusNode,
                  onEditingComplete: () {},
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    counterText: '',
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height * 0.075,
                margin: EdgeInsets.only(
                  left: width * 0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: digit2FocusNode!.hasFocus
                            ? const Color(0xff2673D1)
                            : const Color.fromRGBO(0, 0, 0, 0.15))),
                child: TextField(
                  controller: _digit2Controller,
                  focusNode: digit2FocusNode,
                  onEditingComplete: () {},
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    counterText: '',
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height * 0.075,
                margin: EdgeInsets.only(
                  left: width * 0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: digit3FocusNode!.hasFocus
                            ? const Color(0xff2673D1)
                            : const Color.fromRGBO(0, 0, 0, 0.15))),
                child: TextField(
                  controller: _digit3Controller,
                  focusNode: digit3FocusNode,
                  onEditingComplete: () {},
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    counterText: '',
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height * 0.075,
                margin: EdgeInsets.only(
                  left: width * 0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: digit4FocusNode!.hasFocus
                            ? const Color(0xff2673D1)
                            : const Color.fromRGBO(0, 0, 0, 0.15))),
                child: TextField(
                  controller: _digit4Controller,
                  focusNode: digit4FocusNode,
                  onEditingComplete: () {},
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    counterText: '',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.065),
          // Center(
          //   child: Text(
          //     "Resend code (in 45 sec)",
          //     style: mystyle.get_sf_text(FontWeight.w400, height * 0.0175),
          //   ),
          // ),
          Center(
            child: Text(
              _countdownFinished
                  ? 'Resend code'
                  : 'Resend code (in $_countdownSeconds sec)',
              style: TextStyle(
                color: _countdownFinished ? Colors.blue : Colors.grey,
                fontSize: 16.0,
              ),
            ),
          ),
          // if (_countdownFinished)
          //   RaisedButton(
          //       child: Text('Resend email'),
          //       onPressed: () {
          //         setState(() {
          //           _countdownSeconds = 60;
          //           _countdownFinished = false;
          //         });
          //         _startTimer();
          //       }),

          SizedBox(height: height * 0.065),
          InkWell(
              onTap: () {
                _countdownFinished
                    ? (_startTimer())
                    : (submit()
                    // Navigator.of(context)
                    //   .push(MaterialPageRoute(builder: (context) {
                    //   return HomeScreen();
                    // }))
                    );
              },
              child: _countdownFinished
                  ? (const MyRedButton(title: 'Resend Code'))
                  : (const MyPinlkButton(title: 'Verify & Proceed'))),
        ],
      ),
    );
  }
}

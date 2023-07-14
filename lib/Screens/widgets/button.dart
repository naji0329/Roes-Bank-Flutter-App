import 'package:flutter/material.dart';
import 'package:rosebank/style.dart';

class MyPinlkButton extends StatelessWidget {
  final String? title;
  const MyPinlkButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      height: height * 0.067,
      width: width * 1,
      decoration: BoxDecoration(
          color: const Color(0xffD36E91),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        title!,
        style: mystyle.get_plus_jakarta_white(FontWeight.w700, height * 0.021),
      )),
    );
  }
}

class MyRedButton extends StatelessWidget {
  final String? title;
  const MyRedButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      height: height * 0.067,
      width: width * 1,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 7, 7),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        title!,
        style: mystyle.get_plus_jakarta_white(FontWeight.w700, height * 0.021),
      )),
    );
  }
}

class MyWhiteButton extends StatelessWidget {
  final String? title;
  const MyWhiteButton({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      height: height * 0.067,
      width: width * 1,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        title!,
        style: mystyle.get_plus_jakarta_black(FontWeight.w700, height * 0.021),
      )),
    );
  }
}

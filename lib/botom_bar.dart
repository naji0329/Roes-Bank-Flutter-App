
import 'package:flutter/material.dart';
import 'package:rosebank/Screens/TransitionScreen.dart';
import 'package:rosebank/Screens/home.dart';
import 'package:rosebank/Screens/insurance.dart';
import 'package:rosebank/Screens/mycard.dart';
import 'package:rosebank/style.dart';

class MyFloationButon extends StatelessWidget {
  const MyFloationButon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return FloatingActionButton(
      onPressed: (){},
      child: Image.asset("images/scanner.png",height: height*0.025),

      backgroundColor: Color(0xffCEAB4D),
    );
  }
}

class MyHomeBottomBar extends StatefulWidget {
  @override
  State<MyHomeBottomBar> createState() => _MyHomeBottomBarState();
}

class _MyHomeBottomBarState extends State<MyHomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return BottomAppBar(
      color: Colors.white,
      height: height*0.095,
      shape: CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: (){

                currentIndex=0;
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return HomeScreen();
              }));
            },
            child: Image.asset("images/Vector (1).png",height: height*0.025,
            color: currentIndex==0?Color(0xffCEAB4D):const Color.fromRGBO(0, 0, 0, 0.4),
            )),
        InkWell(
            onTap: (){

                currentIndex=1;

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return InsuranceScreen();
              }));
            },
            child: Image.asset("images/clock.png",height: height*0.025,
              color: currentIndex==1?Color(0xffCEAB4D):Color.fromRGBO(0, 0, 0, 0.4),)),
        InkWell(
            onTap: (){

                currentIndex=2;
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MyCardScreen();
              }));
            },
            child: Image.asset("images/Vector (3).png",height: height*0.025,
              color: currentIndex==2?Color(0xffCEAB4D):Color.fromRGBO(0, 0, 0, 0.4),
            )),
        InkWell(
            onTap: (){

                currentIndex=3;

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return TransitionScreen();
              }));
            },
            child: Image.asset("images/Vector (4).png",height: height*0.025,
              color: currentIndex==3?Color(0xffCEAB4D):Color.fromRGBO(0, 0, 0, 0.4),
            )),

      ],
    ),
    );
  }
}

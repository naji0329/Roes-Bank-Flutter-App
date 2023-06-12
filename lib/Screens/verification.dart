import 'package:flutter/material.dart';
import 'package:rosebank/Screens/home.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/style.dart';

class VerificationrScreen extends StatelessWidget {
  FocusNode ? email=FocusNode();
  FocusNode ? username=FocusNode();
  FocusNode ? password=FocusNode();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          SizedBox(height: height*0.05),
          Center(child: Image.asset("images/Confirmed-rafiki 1.png",height: height*0.3,fit: BoxFit.fill,)),
          SizedBox(height: height*0.01),
          Center(
            child: Text("Your funds under quality defence",
              style: mystyle.get_sf_text_F6C8D8(FontWeight.w500, height*0.017),
            ),
          ),
          SizedBox(height: height*0.025),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("A 4- digits code has been sent to your Email afra***786@gmail.com ",
              style: mystyle.get_sf_text(FontWeight.w400, height*0.019),

            ),
          ),

          SizedBox(height: height*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width*0.15,
                height: height*0.075,
                margin: EdgeInsets.only(
                    left: width*0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:
                    username!.hasFocus?
                    Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15)
                    )
                ),
                child: TextField(

                  focusNode: username,
                  onEditingComplete: (){

                  },
                  maxLength: 1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                 ),
                ),
              ),
              Container(
                width: width*0.15,
                height: height*0.075,
                margin: EdgeInsets.only(
                  left: width*0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:
                    username!.hasFocus?
                    Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15)
                    )
                ),
                child: TextField(

                  focusNode: username,
                  onEditingComplete: (){

                  },
                  maxLength: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              Container(
                width: width*0.15,
                height: height*0.075,
                margin: EdgeInsets.only(
                  left: width*0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:
                    username!.hasFocus?
                    Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15)
                    )
                ),
                child: TextField(

                  focusNode: username,
                  onEditingComplete: (){

                  },
                  maxLength: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              Container(
                width: width*0.15,
                height: height*0.075,
                margin: EdgeInsets.only(
                  left: width*0.025,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:
                    username!.hasFocus?
                    Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15)
                    )
                ),
                child: TextField(

                  focusNode: username,
                  onEditingComplete: (){

                  },
                  maxLength: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),



            ],
          ),


          SizedBox(height: height*0.065),

          Center(
            child: Text("Resend code (in 45 sec)",
              style: mystyle.get_sf_text(FontWeight.w400, height*0.0175),
            ),
          ),


          SizedBox(height: height*0.065),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              child: MyPinlkButton(title: 'Verify & Proceed',)),

        ],
      ),
    );
  }
}

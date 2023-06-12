import 'package:flutter/material.dart';
import 'package:rosebank/Screens/home.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/style.dart';
class LoginScreen extends StatelessWidget {
FocusNode ? email=FocusNode();
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
          Center(child: Image.asset("images/E-Wallet-amico 1.png",height: height*0.25,fit: BoxFit.fill,)),
          SizedBox(height: height*0.025),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("Welcome Back".toUpperCase(),
            style: mystyle.get_sf_text(FontWeight.w400, height*0.02),
            ),
          ),
          SizedBox(height: height*0.018),

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("Account Log in".toUpperCase(),
              style: mystyle.get_sf_bold(FontWeight.w700, height*0.025),
            ),
          ),
          SizedBox(height: height*0.05),

InkWell(
  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return LoginScreen();
    }));
  },
  child:   Container(
    margin: EdgeInsets.only(left: width*0.025,
    right: width*0.025
    ),
    child:   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
      Container(
        padding: EdgeInsets.all(10),
        height: height*0.068,
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(38, 115, 289, 0.08)
            ),
          borderRadius: BorderRadius.circular(10),color: Color(0xfff8fafd)

        ),
        child: Row(

          children: [

          Image.asset("images/google.png",height: height*0.021),
            SizedBox(width: width*0.025,),
            Text("Log in with Google".toUpperCase(),
              style: mystyle.get_sf_text(FontWeight.w400, height*0.013),
            ),
          ],
        ),
      ),
         InkWell(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context){
               return LoginScreen();
             }));
           },
           child: Container(
             padding: EdgeInsets.all(10),
             height: height*0.068,
             decoration: BoxDecoration(
               border: Border.all(
                 color: Color.fromRGBO(38, 115, 289, 0.08)
               ),
                 borderRadius: BorderRadius.circular(10),color: Color(0xfff8fafd)

             ),
             child: Row(

               children: [

                 Image.asset("images/apple.png",height: height*0.021),
                 SizedBox(width: width*0.025,),
                 Text("Log in with Apple".toUpperCase(),
                   style: mystyle.get_sf_text(FontWeight.w400, height*0.013),
                 ),
               ],
             ),
           ),
         ),
       ],
    ),
  ),
),

          SizedBox(height: height*0.025),
          Center(
            child: Text("Or Log in Using Email",
              style: mystyle.get_sf_text(FontWeight.w400, height*0.015),
            ),
          ),
          SizedBox(height: height*0.025),

          Container(

            margin: EdgeInsets.only(
              left: width*0.05,
              right: width*0.05
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color:
              email!.hasFocus?
              Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15)
              )
            ),
            child: TextField(

              focusNode: email,
              onEditingComplete: (){

              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/email.png",
                      color:            email!.hasFocus?
                      Color(0xff2673D1):Color.fromRGBO(0, 0, 0, 0.15),
                      height: height*0.02,
                    ),
                  ],
                ),
                hintText:"Email",
                hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(FontWeight.w400, height*0.014)
              ),
            ),
          ),
          SizedBox(height: height*0.025),

          Container(
            margin: EdgeInsets.only(
                left: width*0.05,
                right: width*0.05
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:   password!.hasFocus?

                Color(0xff2673D1):
                Color.fromRGBO(0, 0, 0, 0.15)
                )
            ),
            child: TextField(
            focusNode: password,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Icon(Icons.visibility,
                     color:   password!.hasFocus?
                     Color(0xff2673D1):    Color.fromRGBO(0, 0, 0, 0.15)
                     )
                    ],
                  ),
                  hintText:"Password",
                  hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(FontWeight.w400, height*0.014)
              ),
            ),
          ),
          SizedBox(height: height*0.025),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              child: MyPinlkButton(title: 'Sign in',)),
          SizedBox(height: height*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an Account? ",
                style: mystyle.get_sf_text(FontWeight.w400, height*0.014),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                },
                child: Text("Register".toUpperCase(),
                  style: mystyle.get_sf_text(FontWeight.w600, height*0.014),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:rosebank/Screens/mycard.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';

class InsuranceDetailScreen extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: MyHomeBottomBar()
      ,
      floatingActionButton: MyFloationButon(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,size: 16),
        centerTitle: true,
        title: Text("Insurance",
          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w600, height*0.02),
        ),
      ),
      body: Column(
        children: [

          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
            height: height*0.067,
            width: width*1,
            decoration: BoxDecoration(
                color: Color(0xffD36E91),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
SizedBox(width: width*0.05,),
             CircleAvatar(
               radius: 18,
               backgroundColor: Color.fromRGBO(255, 255, 255, 0.32),
               child:   Image.asset("images/hand_heart.png",height: height*0.03),
             ),
                SizedBox(width: width*0.05,),
                Text("Health Insurance",
                  style: mystyle.get_plus_jakarta_white(FontWeight.w700, height*0.021),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.01,),
          Image.asset("images/chart 3.png",height: height*0.15),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(
                left: width*0.05,

            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E5E5))
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/Ellipse 25.png",height: height*0.045),
                      SizedBox(height: height*0.01,),
                      Text("Total Insurance",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: width*0.35,
                        child: Text("Total Amount of your Heath Insurance is",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                        textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Text("\$999.99",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width*0.025,),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E5E5))
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/Ellipse 25.png",height: height*0.045),
                      SizedBox(height: height*0.01,),
                      Text("Outstanding Amount",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: width*0.35,
                        child: Text("Total Amount of your Heath Insurance is",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Text("\$999.99",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(
              left: width*0.05,

            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E5E5))
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/Ellipse 25.png",height: height*0.045),
                      SizedBox(height: height*0.01,),
                      Text("Upcoming Payment",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: width*0.35,
                        child: Text("Total Amount of your Heath Insurance is",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Text("\$459.99",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width*0.025,),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffE5E5E5))
                  ),
                  child: Column(
                    children: [
                      Image.asset("images/Ellipse 25.png",height: height*0.045),
                      SizedBox(height: height*0.01,),
                      Text("Lorem Ipsum",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                      SizedBox(height: height*0.01,),
                      Container(
                        width: width*0.35,
                        child: Text("Total Amount of your Heath Insurance is",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      Text("\$949.99",
                        style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.05,),
          InkWell(
            onTap: (){
              currentIndex=2;
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MyCardScreen();
              }));
            },
            child: Container(
                margin: EdgeInsets.only(
                  left: width*0.05,
                  right: width*0.05
                ),
                child: MyPinlkButton(title: "Pay Now",)),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:rosebank/Screens/insurance%20detail.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';

class InsuranceScreen extends StatelessWidget {
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
      body: ListView(

        children: [

          SizedBox(height: height*0.02,),

          Center(
            child: CircleAvatar(
    radius: height*0.1,
    backgroundColor: Colors.purple,
    child: CircleAvatar(
      radius: height*0.098,
backgroundColor: Colors.white,
      child:         Image.asset("images/Vector (5).png",height: height*0.15),
    ),
  ),
          ),
          SizedBox(height: height*0.025,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Are you currently ",
                style: mystyle.get_sf_text(FontWeight.w400, height*0.014),
              ),
              Text("under insured ",
                style: mystyle.get_sf_text_purple(FontWeight.w600, height*0.014),
              ),
            ],
          ),
          SizedBox(height: height*0.05),
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text("Buy Insurance",
              style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
            ),
          ),
          SizedBox(height: height*0.025),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        CircleAvatar(
          radius: height*0.04,
          backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
          child: Image.asset("images/image 5.png",height:height*0.04,),
        ),
        Text("House",
        style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.015),
        )
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: height*0.04,
          backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
          child: Image.asset("images/hand_heart.png",height:height*0.04,),
        ),
        Text("Health",
          style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.015),
        )
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: height*0.04,
          backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
          child: Image.asset("images/image 11.png",height:height*0.04,),
        ),
        Text("Car",
          style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.015),
        )
      ],
    ),
    Column(
      children: [
        CircleAvatar(
          radius: height*0.04,
          backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
          child: Image.asset("images/image 13.png",height:height*0.04,),
        ),
        Text("Disability",
          style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.015),
        )
      ],
    ),

  ],
),


          SizedBox(height: height*0.05),
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text("Buy Insurance",
              style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.0166),
            ),
          ),
          SizedBox(height: height*0.05),
         Container(
           height: height*0.245,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
               Container(

                 margin: EdgeInsets.only(left: width*0.05),

                 width: width*0.8,
                 decoration: BoxDecoration(
                     color: Color(0xffD36E91),
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   children: [
                     SizedBox(height: height*0.015,),
                     Row(
                       children: [
                         SizedBox(width: width*0.025,),
                         CircleAvatar(
                           radius: 18,
                           backgroundColor: Color.fromRGBO(255, 255, 255, 0.32),
                           child:   Image.asset("images/hand_heart.png",height:height*0.04,),
                         ),
                         SizedBox(width: width*0.05,),
                         Text("Health Insurance",
                           style: mystyle.get_plus_jakarta_white(FontWeight.w700, height*0.021),
                         ),
                       ],
                     ),

                     Padding(
                       padding: EdgeInsets.all(12),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Upcoming Payment ",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.0165),
                           ),
                           Text("\$99.9",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w400, height*0.0165),
                           ),
                         ],
                       ),
                     ),

                     Container(
                       alignment: Alignment.centerLeft,
                       margin: EdgeInsets.only(left: width*0.025),
                       child: Text("Due on 23 Dec 2023",
                         style: mystyle.get_plus_jakarta_E0E0E0(FontWeight.w600, height*0.0165),
                       ),
                     ),
                     SizedBox(height: height*0.015,),

                     InkWell(
                       onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return InsuranceDetailScreen();
                         }));
                       },
                       child: Container(
                         width: width*0.5,
                         height: height*0.05,
                         decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.white,
                             ),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Center(
                           child: Text("Make Payment",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.018),
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: height*0.015,),


                   ],
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(left: width*0.1,right: width*0.1),

                 width: width*1,
                 decoration: BoxDecoration(
                     color: Color(0xffD36E91),
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   children: [
                     SizedBox(height: height*0.015,),
                     Row(
                       children: [
                         SizedBox(width: width*0.025,),
                         CircleAvatar(
                           radius: 18,
                           backgroundColor: Color.fromRGBO(255, 255, 255, 0.32),
                           child:   Image.asset("images/hand_heart.png",height:height*0.04,),
                         ),
                         SizedBox(width: width*0.05,),
                         Text("Health Insurance",
                           style: mystyle.get_plus_jakarta_white(FontWeight.w700, height*0.021),
                         ),
                       ],
                     ),

                     Padding(
                       padding: EdgeInsets.all(12),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Upcoming Payment ",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.0165),
                           ),
                           Text("\$99.9",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w400, height*0.0165),
                           ),
                         ],
                       ),
                     ),

                     Container(
                       alignment: Alignment.centerLeft,
                       margin: EdgeInsets.only(left: width*0.025),
                       child: Text("Due on 23 Dec 2023",
                         style: mystyle.get_plus_jakarta_E0E0E0(FontWeight.w600, height*0.0165),
                       ),
                     ),
                     SizedBox(height: height*0.015,),

                     InkWell(
                       onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context){
                           return InsuranceDetailScreen();
                         }));
                       },
                       child: Container(
                         width: width*0.5,
                         height: height*0.05,
                         decoration: BoxDecoration(
                             border: Border.all(
                               color: Colors.white,
                             ),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Center(
                           child: Text("Make Payment",
                             style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.018),
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: height*0.015,),


                   ],
                 ),
               ),
             ],
           ),
         )

        ],
      ),
    );
  }
}

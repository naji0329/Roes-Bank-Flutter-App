
import 'package:flutter/material.dart';
import 'package:rosebank/Screens/TransitionScreen.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';

class HomeScreen extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MyHomeBottomBar()
      ,
      floatingActionButton: MyFloationButon(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,

      body: ListView(

        children: [
          SizedBox(height: height*0.025,),
Column(
 crossAxisAlignment: CrossAxisAlignment.start,
  children: [

        Container(

      width: width*0.4,

      alignment: Alignment.centerLeft,

      margin: EdgeInsets.only(left: width*0.05),

      child:   Text("Good Morning, Halca!",
      style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.02),

      ),

    ),
  ],
),
          SizedBox(height: height*0.025,),
          Row(
            children: [
              Container(

                margin: EdgeInsets.only(left: width*0.05,
                right: width*0.05
                ),
                width: width*0.9,
                decoration: BoxDecoration(
                    color: Color(0xffD36E91),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: height*0.015,),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width*0.05),
                      child: Text("HALCA ALANE",
                        style: mystyle.get_plus_jakarta_white(FontWeight.w500, height*0.018),
                      ),
                    ),
SizedBox(height: height*0.01,),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width*0.05),
                      child: Text(" \$ 320,299 ",
                        style: mystyle.get_plus_jakarta_white(FontWeight.w700, height*0.026),
                      ),
                    ),
                    SizedBox(height: height*0.01,),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05),
                      alignment: Alignment.centerLeft,
                      child: Text(" Deposit 1234567890 ",
                        style: mystyle.get_plus_jakarta_white(FontWeight.w400, height*0.0165),
                      ),
                    ),
                    SizedBox(height: height*0.01,),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width*0.05),
                      child: Text("Debit card E-wallet Top-up",
                        style: mystyle.get_plus_jakarta_E0E0E0(FontWeight.w600, height*0.0165),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: width*0.05),
                          child: Text("E-wallet Top-up",
                            style: mystyle.get_plus_jakarta_E0E0E0(FontWeight.w600, height*0.0165),
                          ),
                        ),
                Container(
                  margin: EdgeInsets.only(right: width*0.05),
                  child: Chip(label: Text("Transfer",
                  style: mystyle.get_sf_text_purple(FontWeight.w400, height*0.017),
                  ),
                  backgroundColor: Colors.white,
                  ),
                )
                      ],
                    ),

                    SizedBox(height: height*0.015,),


                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: height*0.05),
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Text("Last Transitions",
              style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
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
                     backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7f/Emma_Watson_2013.jpg",),
                  ),
                  SizedBox(height: height*0.01,),
                  Text("Lucy",

                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: height*0.04,
                    backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
                     backgroundImage: NetworkImage("https://ginraiders.com/wp-content/uploads/2023/05/AP22073572155382-1200x800.jpg",),
                  ),
                  SizedBox(height: height*0.01,),
                  Text("Stacy",

                  )
                ],
              ),
              Column(
                children: [ 
                  CircleAvatar(
                    radius: height*0.04,
                    backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
                     backgroundImage: NetworkImage("https://media.glamour.com/photos/62fe9324ede36708d8fb390a/4:3/w_2516,h_1887,c_limit/1406845795",),
                  ),
                  SizedBox(height: height*0.01,),
                  Text("Luna",

                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: height*0.04,
                    backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
                    backgroundImage: NetworkImage("https://static01.nyt.com/images/2012/08/19/t-magazine/19well-emma-2/19well-emma-2-jumbo.jpg?quality=75&auto=webp&disable=upscale",),
                  ),
                  SizedBox(height: height*0.01,),
                  Text("Jane",

                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: height*0.04,
                    backgroundColor: Color.fromRGBO(246, 200, 216, 0.24),
                     backgroundImage: NetworkImage("https://static01.nyt.com/images/2012/08/19/t-magazine/19well-emma-2/19well-emma-2-jumbo.jpg?quality=75&auto=webp&disable=upscale",),
                  ),
                  SizedBox(height: height*0.01,),
                  Text("John",

                  )
                ],
              ),
            ],
          ),
          SizedBox(height: height*0.025),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return TransitionScreen();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05),
              child: Text("Pay To Contact",
                style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
              ),
            ),
          ),
          SizedBox(height: height*0.025),
          Container(
            height: height*0.216,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                            color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.015,),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                              color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.015,),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                              color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
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
          ),
          SizedBox(height: height*0.025),

          Container(
            height: height*0.216,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                              color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.015,),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                              color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.015,),


                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  width: width*0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.16)
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height*0.015,),
                      Row(
                        children: [
                          SizedBox(width: width*0.025,),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage:   NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800"),
                          ),
                          SizedBox(width: width*0.025,),
                          Text("Esther Howard",
                            style: mystyle.get_plus_jakarta_black(FontWeight.w500, height*0.016),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Lorem ipsum dolor sit amet consectetur.  ",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w600, height*0.0145),
                        ),
                      ),


                      SizedBox(height: height*0.015,),

                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return TransitionScreen();
                          }));
                        },
                        child: Container(
                          width: width*0.32,
                          height: height*0.048,
                          decoration: BoxDecoration(
                              color: mycolor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Pay Now",
                              style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.014),
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
          ),
          SizedBox(height: height*0.05),
        ],
      ),
    );
  }
}

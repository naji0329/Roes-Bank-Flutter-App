import 'package:flutter/material.dart';
import 'package:rosebank/Screens/insurance.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';
class TransitionScreen extends StatelessWidget {
  const TransitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MyHomeBottomBar()
      ,
      floatingActionButton: const MyFloationButon(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: Stack(
        children: [


          Container(
            height: height*0.28,
            width: width*1,
             decoration: BoxDecoration(
               color: mycolor,
               borderRadius: BorderRadius.circular(70)
             ),
         child: Column(
           children: [
             SizedBox(height: height*0.05,),
             ListTile(
               leading: const CircleAvatar(
                 radius: 25,
                 backgroundImage: NetworkImage("https://www.aljazeera.com/wp-content/uploads/2022/01/2016-09-20T000000Z_845319616_S1BEUCKKIQAB_RTRMADP_3_UN-ASSEMBLY.jpg?resize=1800%2C1800")
               ),
               title: Text("afra786@gmail.com",
               style: mystyle.get_plus_jakarta_white(FontWeight.w500, height*0.018),
               ),
               trailing: Container(
                 width: width*0.2,
                 child: Image.asset("images/uplaod.png",
                 height: height*0.018,
                 ),
               )
             )
           ],
         ),
          ),

          ListView(
            children: [

              Container(
                height: height*0.22,
                margin: EdgeInsets.only(left: width*0.05,
                    right: width*0.05,
                  top: height*0.16
                ),
                width: width*0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: height*0.015,),
                    Text("Total Balance",
                      style: mystyle.get_sf_text_purple(FontWeight.w500, height*0.018),
                    ),
                    SizedBox(height: height*0.01,),
                    Text(" \$ 320,299 ",
                      style: mystyle.get_sf_text_purple(FontWeight.w700, height*0.026),
                    ),
                    SizedBox(height: height*0.02,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: width*0.05),
                             alignment: Alignment.centerLeft,
                             child: Text("Account",
                               style: mystyle.get_sf_text_purple_light(FontWeight.w400, height*0.0165),
                             ),
                           ),
                           SizedBox(height: height*0.01,),
                           Container(
                             alignment: Alignment.centerLeft,
                             margin: EdgeInsets.only(left: width*0.05),
                             child: Text("*** *** 457",
                               style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.0165),
                             ),
                           ),
                           SizedBox(height: height*0.01,),
                           Container(
                             alignment: Alignment.centerLeft,
                             margin: EdgeInsets.only(left: width*0.05),
                             child: Text("\$3000.50",
                               style: mystyle.get_sf_text_purple(FontWeight.w600, height*0.0165),
                             ),
                           ),

                           SizedBox(height: height*0.015,),
                         ],
                       ),
                       Container(
                         height: height*0.085,
                         width: width*0.005,
                         color: const Color(0xffB1C6FF),
                       ),
                       Column(
                         children: [
                           Container(
                             margin: EdgeInsets.only(right: width*0.05),
                             alignment: Alignment.centerLeft,
                             child: Text("Card",
                               style: mystyle.get_sf_text_purple_light(FontWeight.w400, height*0.0165),
                             ),
                           ),
                           SizedBox(height: height*0.01,),
                           Container(
                             alignment: Alignment.centerLeft,
                             margin: EdgeInsets.only(right: width*0.05),
                             child: Text("*** *** 457",
                               style: mystyle.get_plus_jakarta_black(FontWeight.w600, height*0.0165),
                             ),
                           ),
                           SizedBox(height: height*0.01,),
                           Container(
                             alignment: Alignment.centerLeft,
                             margin: EdgeInsets.only(right: width*0.05),
                             child: Text("\$3000.50",
                               style: mystyle.get_sf_text_purple(FontWeight.w600, height*0.0165),
                             ),
                           ),

                           SizedBox(height: height*0.015,),

                         ],
                       ),
                     ],
                   )


                  ],
                ),
              ),
              SizedBox(height: height*0.015,),
              Row(

                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return InsuranceScreen();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: width*0.05
                        ),
                        height: height*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(246, 200, 216, 0.17)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image.asset("images/image 1.png",
                        height: height*0.1,
                        ),
                            SizedBox(height: height*0.01,),
                            Text("Bill Payments",

                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return InsuranceScreen();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: width*0.05,
                          right: width*0.05
                        ),
                        height: height*0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(246, 200, 216, 0.17)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/image 2.png",
                              height: height*0.1,
                            ),
                            SizedBox(height: height*0.01,),
                            Text("Insurance",

                            )
                          ],
                        ),
                      ),
                    ),
                  ),

            ],
          ),
              SizedBox(height: height*0.015,),
              Row(

                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: width*0.05
                      ),
                      height: height*0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(246, 200, 216, 0.17)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/image 3.png",
                            height: height*0.1,
                          ),
                          SizedBox(height: height*0.01,),
                          Text("Bank Records",

                          )
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: width*0.05,
                          right: width*0.05
                      ),
                      height: height*0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(246, 200, 216, 0.17)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/image 4.png",
                            height: height*0.1,
                          ),
                          SizedBox(height: height*0.01,),
                          Text("Transaction",

                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: height*0.015,),
              Container(
                margin: EdgeInsets.only(left: width*0.05,
                right: width*0.05
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Promo",
                      style: mystyle.get_plus_jakarta_0F2D52(FontWeight.w700, height*0.02),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.black,
                    size: height*0.025,
                    )
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),

              Container(
                margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                width: width*0.44,
                decoration: BoxDecoration(
                    color: mycolor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: height*0.015,),
                    Text("Get Life Insurance",
                      style: mystyle.get_plus_jakarta_white(FontWeight.w600, height*0.018),
                    ),
                  SizedBox(height: height*0.02,),
                    Text("Get Monthly \$66 EMI only",
                      style: mystyle.get_plus_jakarta_white(FontWeight.w400, height*0.0145),
                    ),


                    SizedBox(height: height*0.015,),




                  ],
                ),
              ),
              SizedBox(height: height*0.05,),
            ],
          ),

        ],
      ),
    );
  }
}

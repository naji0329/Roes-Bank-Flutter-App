import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rosebank/Screens/add_new_card.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardScreen extends StatelessWidget {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,size: 16),
        centerTitle: true,
        title: Text("My Card",
          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w600, height*0.02),
        ),
      ),
      body: Column(
        children: [

          SizedBox(height: height*0.025,),
          CarouselSlider(

            options: CarouselOptions(height: height*0.23),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("images/card.png"))
                      ),

                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: height*0.025,),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  3,
              effect:  WormEffect(
                activeDotColor:mycolor
              ),  // your preferred effect
              onDotClicked: (index){

              }
          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(
                left: width*0.05,
                right: width*0.05
            ),
            child: Row(
              children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return AddNewCardScreen();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffE5E5E5))
                  ),
                child: Column(
                  children: [
                    Image.asset("images/image 13.png",height: height*0.045),
                    SizedBox(height: height*0.01,),
                    Text("Spent",
                      style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                    ),
                    SizedBox(height: height*0.01,),
                    Text("25% more than last month",
                      style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                    ),
                    SizedBox(height: height*0.01,),
                    Text("\$1,546",
                      style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                    ),
                  ],
                ),
                ),
              ),
                SizedBox(width: width*0.025,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return AddNewCardScreen();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffE5E5E5))
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/image 14.png",height: height*0.045),
                        SizedBox(height: height*0.01,),
                        Text("Credit Point",
                          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                        ),
                        SizedBox(height: height*0.01,),
                        Text("25% more than last month",
                          style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                        ),
                        SizedBox(height: height*0.01,),
                        Text("\$1,546",
                          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width*1,
            margin: EdgeInsets.only(
                left: width*0.025,
                right: width*0.025
            ),
            padding: EdgeInsets.all(8),

            child: Column(
              children: [

                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                   radius: 25,
                    backgroundColor: Color.fromRGBO(211, 110, 145, 0.32),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Image.asset("images/image 13.png",height: height*0.033),
                    ),
                  ),
                  title: Text("Spent",
                    style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                  ),
                  subtitle: Text("25% more than last month",
                    style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                  ),
                  trailing: Container(
                      width: width*0.2,
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       Text("\$1,546",
                            style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                          ),
                        ],
                      )),
                ),

                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(211, 110, 145, 0.32),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Image.asset("images/image 14.png",height: height*0.033),
                    ),
                  ),
                  title: Text("Credit Point",
                    style: mystyle.get_plus_jakarta_D36E91(FontWeight.w800, height*0.0166),
                  ),
                  subtitle: Text("25% more than last month",
                    style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                  ),
                  trailing: Container(
                      width: width*0.2,
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$1,546",
                            style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                          ),
                        ],
                      )),
                ),

                ListTile(
                  dense: true,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(211, 110, 145, 0.32),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Image.asset("images/image 13.png",height: height*0.033),
                    ),
                  ),
                  title: Text("Spent",
                    style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                  ),
                  subtitle: Text("25% more than last month",
                    style: mystyle.get_plus_jakarta_grey(FontWeight.w700, height*0.012),
                  ),
                  trailing: Container(
                      width: width*0.2,
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$1,546",
                            style: mystyle.get_plus_jakarta_D36E91(FontWeight.w700, height*0.0166),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/botom_bar.dart';
import 'package:rosebank/style.dart';
class BillPaymentDetailScreen extends StatelessWidget {
  const BillPaymentDetailScreen({Key? key}) : super(key: key);

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
        title: Text("Bill Payments",
          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w600, height*0.02),
        ),
      ),
      body: Column(
        children: [

          SizedBox(height: height*0.025,),

          CircleAvatar(
            radius: 55,
         backgroundColor: Color(0xff3D3D3D),
         child: Image.asset("images/image 19.png",height: height*0.075),
          ),
          SizedBox(height: height*0.025,),

          Text("Mcdonald’s",
          style: mystyle.get_plus_jakarta_D36E91(FontWeight.w400  , height*0.022),
          ),
          SizedBox(height: height*0.01,),

          Text("\$ 999.45",
            style: mystyle.get_plus_jakarta_D36E91(FontWeight.w600  , height*0.027),
          ),
          SizedBox(height: height*0.025,),
          Container(
            width: width*1,
            margin: EdgeInsets.only(
                left: width*0.05,
                right: width*0.05
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color.fromRGBO(246, 200, 216, 0.12),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.015,),
                Container(
                  margin: EdgeInsets.only(left: width*0.05),
                  child: Text("Select Account or card",
                    style: mystyle.get_sf_text(FontWeight.w400, height*0.0175),
                  ),
                ),

                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(75, 59, 59, 0.29),
                    child: Image.asset("images/image 17.png",height: height*0.033),
                  ),
                  title: Text("Citi Bank",
                    style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
                  ),
                  subtitle: Text("*** *** *** 235",
                    style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
                  ),
                  trailing: Container(
                      width: width*0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/done.png",
                            height: height*0.025,
                          ),
                        ],
                      )),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(75, 59, 59, 0.29),
                    child: Image.asset("images/image 18.png",height: height*0.033),
                  ),
                  title: Text("Visa Card",
                    style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
                  ),
                  subtitle: Text("*** *** *** 235",
                    style: mystyle.get_plus_jakarta_black_bold(FontWeight.w700, height*0.02),
                  ),
                  trailing: Container(
                      width: width*0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/done.png",
                            height: height*0.025,
                          ),
                        ],
                      )),
                ),

              ],
            ),
          ),

          SizedBox(height: height*0.07,),
      
          MyPinlkButton(title: "Select & Pay",)


        ],
      ),
    );
  }
}

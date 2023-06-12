import 'package:flutter/material.dart';
import 'package:rosebank/Screens/bill_payemnt.dart';
import 'package:rosebank/Screens/widgets/button.dart';
import 'package:rosebank/style.dart';

class AddNewCardScreen extends StatefulWidget {
  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
bool status=false;

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          SizedBox(height: height*0.05),
          Container(
            margin: EdgeInsets.only(left: width*.1,
            right: width*0.1
            ),
            child: Image.asset("images/card.png",height: height*0.22,fit: BoxFit.fill,

            width: width*1,),
          ),


          SizedBox(height: height*0.05),

          Container(

            margin: EdgeInsets.only(
                left: width*0.05,
                right: width*0.05
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:
               Color.fromRGBO(0, 0, 0, 0.15)
                )
            ),
            child: TextField(


              onEditingComplete: (){

              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),

                  hintText:"Card Holder Name",
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
                border: Border.all(color:
             Color.fromRGBO(0, 0, 0, 0.15)
                )
            ),
            child: TextField(


              onEditingComplete: (){

              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),

                  hintText:"Card Number",
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
                border: Border.all(color:
                Color.fromRGBO(0, 0, 0, 0.15)
                )
            ),
            child: TextField(

              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),

                  hintText:"Expiration Date",
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
                border: Border.all(color:
                Color.fromRGBO(0, 0, 0, 0.15)
                )
            ),
            child: TextField(

              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),

                  hintText:"CVC",
                  hintStyle: mystyle.get_plus_jakarta_0xff0F2D52(FontWeight.w400, height*0.014)
              ),
            ),
          ),


          SizedBox(height: height*0.025),

          Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Checkbox(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        value: status, onChanged: (val){
      setState(() {
        status=val!;
      });
    }),
  Text("Save Your Card For Future Paymrnts",style:   mystyle.get_plus_jakarta_0xff0F2D52(FontWeight.w400, height*0.014)
  )
  ],
),

          SizedBox(height: height*0.025),

          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return BillPaymentScreen();
                }));
              },
              child: MyPinlkButton(title: 'Add Card',)),

        ],
      ),
    );
  }
}

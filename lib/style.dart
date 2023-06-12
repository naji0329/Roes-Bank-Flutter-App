
import 'package:flutter/material.dart';

class CustomTextStyle{


  TextStyle get_plus_jakarta_black_bold(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:Colors.black,
      fontFamily: 'PlusJakartaSans-Bold'


    );
  }

  TextStyle get_plus_jakarta_0F2D52(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color(0xff0F2D52),
        fontFamily: 'PlusJakartaSans-Regular'


    );
  }


  TextStyle get_plus_jakarta_black(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:Colors.black,
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }

  TextStyle get_plus_jakarta_E0E0E0(FontWeight weight,double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: const Color(0xffE0E0E0),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
  TextStyle get_plus_jakarta_white(FontWeight weight,double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: Colors.white,
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
  TextStyle get_times_black(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:Colors.black,
        fontFamily: 'times new roman'

    );
  }



  TextStyle get_plus_jakarta_585858(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:const Color(0xff585858),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
  TextStyle get_plus_jakarta_grey(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color.fromRGBO(69, 90, 100, 0.39),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
  TextStyle get_plus_jakarta_0F2D5273_bold(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:const Color(0xff0F2D52),
        fontFamily: 'PlusJakartaSans-Bold'
    );

  }

  TextStyle get_plus_jakarta_D36E91(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color(0xffD36E91),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
  TextStyle get_plus_jakarta_0F2D5273(FontWeight weight,double size){
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color:const Color(0xff0F2D52),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }


  TextStyle get_plus_jakarta_0xff0F2D52(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color(0xff0F2D52),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }


  TextStyle get_sf_text_F6C8D8(FontWeight weight,double size) {
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: const Color(0xffF6C8D8),
        fontFamily: 'PlusJakartaSans-Regular'

    );
  }
    TextStyle get_sf_text(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color(0xff0F2D52),
        fontFamily: 'sf_pro'

    );


  }
  TextStyle get_sf_text_purple(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:mycolor,
        fontFamily: 'sf_pro'

    );


  }

  TextStyle get_sf_text_purple_light(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:mycolor.withOpacity(0.5),
        fontFamily: 'sf_pro'

    );


  }

  TextStyle get_sf_bold(FontWeight weight,double size){
    return TextStyle(
        fontSize: size,
        fontWeight: weight,
        color:const Color(0xff0F2D52),
        fontFamily: 'sf_pro'
    );

  }
}
CustomTextStyle mystyle=CustomTextStyle();
Color mycolor=const  Color(0xffD36E91);
Color bgcolor=const Color(0xff1F222A);
Color redishcolor=const Color(0xff361f25);

int currentIndex = 0;
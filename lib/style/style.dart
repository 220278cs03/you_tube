import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style{
  Style._();

  // ---------------------------- Colors ------------------------- //

  //grey
  static const primaryGrey = Color(0xffECECEC);
  static const greyBorder = Color(0xffCECECE);
  static const darkGrey = Color(0xff6C6C6C);
  static const beta = Color(0xff9D9D9D);

  //black
  static const primaryBlack = Color(0xff0A0A0A);
  static const blackColor = Color(0xff000000);
  static const useless = Color(0xff3B3B3B);

  //white
  static const whiteColor = Color(0xffFFFFFF);

  // ---------------------------- TextStyle ----------------------- //

  static textStyleNormal({double size = 14, Color textColor = Style.primaryBlack}){
    return GoogleFonts.roboto(
      fontSize: size,
      color: textColor,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none,
    );
  }

  static textStyleThin({double size = 12, Color textColor = Style.blackColor}){
    return GoogleFonts.roboto(
      fontSize: size,
      color: textColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none,
    );
  }


}
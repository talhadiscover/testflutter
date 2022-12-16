import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TkhawiTheme{
  static var iconheight =  25.0;
  static var iconwidth =  25.0;
  static LinearGradient gradientcolor =    LinearGradient(
      colors: [
        Color(0xff09436F) ,
        Color(0xff002038) ,
      ])   ;
  static Color primaryColor = const Color(0xff002038);
  static Color bluenotification = const Color(0xffEEF8FF);
  static Color blackColor = const Color(0xff000000);
  static Color orangeColor = const Color(0xffF8674A);
  static Color greyColor = const Color(0xff4B545A);
  static Color skyBlueColor = const Color(0xffEEF8FF);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color lightBlueColor = const Color(0xff557C99);
  static Color lightBlue2Color = const Color(0xff97ADB6);
  static Color lightBlackColor = const Color(0xff2E2E2E);
  static Color black2Color = const Color(0xff333333);
  static Color borderLightColor = const Color(0xffD5DAE0);
  static Color fillLightColor = const Color(0xf4f4f4);
  static Color blackLightColor = const Color(0xff5E5E5E);
  static Color greyLightColor = const Color(0xffBBBBBB);
  static Color greyTitleLightColor = const Color(0xffFBFCFF);
  static Color greenColor = const Color(0xff00A764);
  static Color redColor = const Color(0xffE70002);
  static Color blackcard = const Color(0xffbac4B545A);
  static Color transparentcolour =  Colors.transparent;
  static TextStyle pc11w500 =TextStyle(color: primaryColor,fontSize: 11.sp,fontWeight: FontWeight.w500);
  static TextStyle blc12w400 =TextStyle(color: blackLightColor,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle blc13w400 =TextStyle(color: Colors.blue,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle gc12w500 =TextStyle(color: greenColor,fontSize: 12.sp,fontWeight: FontWeight.w500);
  static TextStyle rc12w500 =TextStyle(color: redColor,fontSize: 12.sp,fontWeight: FontWeight.w500);
  static TextStyle blc16w400 =TextStyle(color: blackLightColor,fontSize: 16.sp,fontWeight: FontWeight.w400);
  static TextStyle glc12w400 =TextStyle(color: greyLightColor,fontSize: 12.sp,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,);
  static TextStyle pc12w500 =TextStyle(color: primaryColor,fontSize: 12.sp,fontWeight: FontWeight.w500);
  static TextStyle pc12w600 =TextStyle(color: primaryColor,fontSize: 12.sp,fontWeight: FontWeight.w600);
  static TextStyle pc13w400 =TextStyle(color: primaryColor,fontSize: 13.sp,fontWeight: FontWeight.w400);
  static TextStyle pc13w600 =TextStyle(color: primaryColor,fontSize: 13.sp,fontWeight: FontWeight.w600);
  static TextStyle pc13w700 =TextStyle(color: primaryColor,fontSize: 13.sp,fontWeight: FontWeight.w700);
  static TextStyle gc12w400 =TextStyle(color: greyColor,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle grc12w500 =TextStyle(color: greyColor,fontSize: 12.sp,fontWeight: FontWeight.w500);
  static TextStyle gc14w400 =TextStyle(color: greyColor,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle gc14w500 =TextStyle(color: greyColor,fontSize: 14.sp,fontWeight: FontWeight.w500);
  static TextStyle gc16w500 =TextStyle(color: greyColor,fontSize: 16.sp,fontWeight: FontWeight.w500);
  static TextStyle pc14w500 =TextStyle(color: primaryColor,fontSize: 14.sp,fontWeight: FontWeight.w500);
  static TextStyle pc14w600 =TextStyle(color: primaryColor,fontSize: 14.sp,fontWeight: FontWeight.w600);
  static TextStyle lb2c12w400 =TextStyle(color: lightBlue2Color,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle lb2c13w400 =TextStyle(color: lightBlue2Color,fontSize: 13.sp,fontWeight: FontWeight.w400);
  static TextStyle lb2c14w400 =TextStyle(color: lightBlue2Color,fontSize: 17.sp,fontWeight: FontWeight.w400);
  static TextStyle lbc12w400 =TextStyle(color: lightBlackColor,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle lbc14w400 =TextStyle(color: lightBlackColor,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle lbc14w4001 =TextStyle(color: blackcard,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle blc14w400 =TextStyle(color: borderLightColor,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle pc16w500 =TextStyle(color: primaryColor,fontSize: 16.sp,fontWeight: FontWeight.w500);
  static TextStyle pc16w600 =TextStyle(color: primaryColor,fontSize: 16.sp,fontWeight: FontWeight.w600);
  static TextStyle pc18w500 =TextStyle(color: primaryColor,fontSize: 18.sp,fontWeight: FontWeight.w500);
  static TextStyle pc18w600 =TextStyle(color: primaryColor,fontSize: 18.sp,fontWeight: FontWeight.w600);
  static TextStyle lb2c16w600 =TextStyle(color: lightBlue2Color,fontSize: 16.sp,fontWeight: FontWeight.w600);
  static TextStyle bc16w500 =TextStyle(color: black2Color,fontSize: 16.sp,fontWeight: FontWeight.w500);
  static TextStyle wc12w500 =TextStyle(color: whiteColor,fontSize: 12.sp,fontWeight: FontWeight.w500);
  static TextStyle wc14w400 =TextStyle(color: whiteColor,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle wc16w500 =TextStyle(color: whiteColor,fontSize: 16.sp,fontWeight: FontWeight.w500);
  static TextStyle wc18w500 =TextStyle(color: whiteColor,fontSize: 18.sp,fontWeight: FontWeight.w500);
  static TextStyle wc20w600 =TextStyle(color: whiteColor,fontSize: 20.sp,fontWeight: FontWeight.w600);
  static TextStyle gc22w500 =TextStyle(color: greyColor,fontSize: 22.sp,fontWeight: FontWeight.w600);
  static TextStyle oc22w500 =TextStyle(color: orangeColor,fontSize: 22.sp,fontWeight: FontWeight.w600);
  static TextStyle oc24w700 =TextStyle(color: orangeColor,fontSize: 24.sp,fontWeight: FontWeight.w700);
  static TextStyle oc14w400 =TextStyle(color: orangeColor,fontSize: 14.sp,fontWeight: FontWeight.w400);
  static TextStyle oc16w500 =TextStyle(color: orangeColor,fontSize: 16.sp,fontWeight: FontWeight.w500);
  static TextStyle ride =TextStyle(color: primaryColor,fontSize: 15.sp,fontWeight: FontWeight.w500);
  static TextStyle modal =  TextStyle(color: Color(0xff4B545A),fontWeight: FontWeight.w500,fontSize: 14,);
  static TextStyle modal2 =  TextStyle(color: Color(0xff7A7A7A),fontWeight: FontWeight.w400,fontSize: 14,);
  static TextStyle modal3 =TextStyle(color: primaryColor,fontSize: 18.sp,fontWeight: FontWeight.w700);
  static TextStyle modal4 =TextStyle(color: primaryColor,fontSize: 16.sp,fontWeight: FontWeight.w600);
  static TextStyle modal5 =TextStyle(color: Color(0xffF8674A),fontSize: 16.sp,fontWeight: FontWeight.w600);
  static TextStyle ride2 =TextStyle(color: greyColor,fontSize: 15.sp,fontWeight: FontWeight.w500);
  static TextStyle ride3 =TextStyle(color: redColor,fontSize: 10.sp,fontWeight: FontWeight.w400);
  static TextStyle modal7 =  TextStyle(color: primaryColor,fontWeight: FontWeight.w400,fontSize: 14,);
  static TextStyle feedbacktitle =TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500);
  static TextStyle feedbacktheme =TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle feedbackhint =TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400);
  static TextStyle notificationtext =TextStyle(color: Color(0xff285678),fontSize: 15.sp,fontWeight: FontWeight.bold);

}
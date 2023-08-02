import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/views/add_cities.dart';
import 'package:testflutter/views/dashbaord/secondscreen.dart';
import 'package:testflutter/views/lofinsignup/login.dart';
import 'package:testflutter/views/splash/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testflutter/views/test1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      builder: (BuildContext context, Widget? child) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Quick_books',
            theme: ThemeData(
              fontFamily: 'Nunito',
              primarySwatch: Colors.blue,
            ),
            // home:  secondscreen(),
            home:  loginscreen(),
          ),
    );
  }
}


import 'dart:async';
 import 'package:flutter/material.dart';
import '../lofinsignup/login.dart';
import 'package:testflutter/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => loginscreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image.asset(logo),
    );
  }
}

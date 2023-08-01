import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class test1screen extends StatefulWidget {
  const test1screen({Key? key}) : super(key: key);

  @override
  State<test1screen> createState() => _test1screenState();
}

class _test1screenState extends State<test1screen> {
  int _activeStepIndex = 0;
  int currentStep = 1;
  int stepLength = 5;
  late bool complete;

  next() {
    if (currentStep <= stepLength) {
      goTo(currentStep + 1);
    }
  }

  back() {
    if (currentStep > 1) {
      goTo(currentStep - 1);
    }
  }
  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }

  stepState(int step) {
    if (_activeStepIndex > step) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  stepList() => [
    Step(
      title: const Text(''),
      content: Container(),
      state: stepState(0),
      isActive: _activeStepIndex >= 0,
    ),
    Step(
      title: const Text(''),
      // content: const StepTwo(),
      state: stepState(1),
      isActive: _activeStepIndex >= 1, content: Container(),
    ),
    Step(
      title: const Text(''),
      // content: const StepThree(),
      content: Container(),
       state: stepState(2),
      isActive: _activeStepIndex >= 2,
    )
  ];
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
  var _bottomNavIndex = 0; //default index of a first screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.h),
              child:  const Text(
                'First name',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                      borderSide: BorderSide(color: Colors.black,width: .01)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color: Colors.black,width: .7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:Colors.black,width: .7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';
import '../../controllers/signup_controler.dart';
import '../../theme/theme.dart';
import '../dashbaord/dashboard.dart';
import 'login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool isObscure = true;
  bool regisObscure = true;
  final RegistrationController regcontroller =    Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:   EdgeInsets.only(left: 20.w,right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(icon,height: 150,)),
            SizedBox(
              height: 20,
            ),
            Padding(
              //10
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  // fillColor: TkhawiTheme.fillLightColor,
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0.r),
                      borderSide: BorderSide(color: Colors.grey.shade100,width: .01)),
                  hintText: "Email".tr,
                  hintStyle: TkhawiTheme.lb2c14w400,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color: Colors.grey.shade100,width: .7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color: Colors.grey.shade100,width: .7),
                  ),
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormField(
                controller: password,
                obscureText: isObscure,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(Icons.visibility_off_outlined,color: isObscure ?  TkhawiTheme.lightBlue2Color:TkhawiTheme.blackColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                      borderSide: BorderSide(color:  Colors.grey.shade100,width: .01)),
                  hintText: "password".tr,
                  hintStyle: TkhawiTheme.lb2c14w400,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                ),
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Please enter password';
                  }
                  // Check if the entered email has the right format
                  if (value.trim().length < 5) {
                    return 'Password must not be less than 5';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormField(
                controller: name,
                 decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                      borderSide: BorderSide(color:  Colors.grey.shade100,width: .01)),
                  hintText: "name".tr,
                  hintStyle: TkhawiTheme.lb2c14w400,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                ),
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Please enter password';
                  }
                  // Check if the entered email has the right format
                  if (value.trim().length < 5) {
                    return 'Password must not be less than 5';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormField(
                 decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                      borderSide: BorderSide(color:  Colors.grey.shade100,width: .01)),
                  hintText: "age".tr,
                  hintStyle: TkhawiTheme.lb2c14w400,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(color:  Colors.grey.shade100,width: .7),
                  ),
                ),
                autovalidateMode:AutovalidateMode.onUserInteraction,

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Container(
              width:Get.width,
              height:50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () async {
                    await regcontroller.hitRegistration(  email.text, name.text,  password.text, '123455666',1, 1,"dob","age", "gymname", "country");
                    if (regcontroller.registrationData.value .message!=null) {
                      Get.snackbar('Sucess',  'Registration Sucessfully Complete', colorText: Colors.white, backgroundColor: Colors.green);
                      print(regcontroller   .registrationData.value.message);
                      Get.to(loginscreen());
                       email.clear();
                      name.clear();
                      password.clear();
                     } else {
                      Get.snackbar('Failed','please fill complete Details', colorText: Colors.white, backgroundColor: Colors.red);
                      email.clear();
                      name.clear();
                      password.clear();
                    }


                    print('error');
                  },
                  child: !regcontroller.isLoading.value
                      ? Text('Sign up')
                      : const Center(child: CircularProgressIndicator())),
            )),

          ],
        ),
      ),
    );

  }
}

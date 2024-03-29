import 'package:flutter/material.dart';
import 'package:testflutter/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testflutter/views/lofinsignup/signup.dart';
import '../../controllers/login_controller.dart';
import '../../model/widget.dart';
import '../../theme/theme.dart';
import 'package:get/get.dart';
import '../dashbaord/dashboard.dart';
import '../dashbaord/secondscreen.dart';



class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool isObscure = true;
  bool regisObscure = true;
  LoginController login = Get.put(LoginController());
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:   EdgeInsets.only(left: 20.w,right: 20.w,top: 20.h),
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
                controller: name,
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
                   await login.hitLogin(name.text.trim(),password.text.trim());
                    if (login.loginData.value.message!=null) {
                      print(login.loginData.value.message);
                      Get.offAll(secondscreen(),
                       );

                    } else {
                      Get.snackbar('Failed',
                          'Email or Password Wrong',
                          colorText: Colors.white,
                          backgroundColor: Colors.red);
                      name.clear();
                      password.clear();
                    }
                    print('error');
                  },
                  child: !login.isLoading.value
                      ? Text('Login')
                      : const Center(child: CircularProgressIndicator())),
            )),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text('Sign up',),
                  onPressed: () {
                    Get.to(signup());
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

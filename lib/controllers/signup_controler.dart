import 'dart:convert';
 import 'package:get/get.dart';
 import '../model/ownergymresp_model.dart';
import '../model/reg_resp_model.dart';
import '../services/api.dart';


class RegistrationController extends GetxController{
  var name ;
  var email;
  var isLoading = false.obs;
  final registrationData = RegisterModelResp(message: null).obs;

  hitRegistration(email,name,password,phone,role,flag,dob,age,gymname,country) async {
    try {
      isLoading(true);
      RegisterModel model = RegisterModel(
        email: email,
        name: name,
        password: password,
        phone:  phone ,
        role:  role ,
        flag: role ,
        dob: dob,
        age: age,
        gymName: gymname,
        country: country,
      );
      var res = await API().apiRegistration(registerModelToJson(model));
      var decoded = jsonDecode(res);
      if (decoded['message'] == 'User added!') {
        print(model.email);
        RegisterModelResp registrationModel = registerModelRespFromJson(res);
        registrationData.value = registrationModel;
        registrationData.refresh();
      }
    }
    finally{
      isLoading(false);
    }
  }
}
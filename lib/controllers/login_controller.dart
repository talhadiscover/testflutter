import 'dart:convert';
 import 'package:get/get.dart';

import '../model/login_model.dart';
import '../model/login_resp_model.dart';
import '../services/api.dart';


class LoginController extends GetxController{
  var isLoading = false.obs;
  final loginData = LoginModel( message: null,user: null ).obs;
  hitLogin(email,password) async {
    try {
      isLoading(true);
      LoginModels model = LoginModels(
        email: email,
        password: password,
      );
      var res = await API().apiLogin(loginModelsToJson(model),);
      var decoded = jsonDecode(res);
      print(decoded['message'] );
      print('mesg${decoded['message'] }');
      if (decoded['message'] == "login sucess") {
        LoginModel loginRespModel = loginModelFromJson(res);
        print(loginRespModel);
        loginData.value = loginRespModel;
        loginData.refresh();
        print('withmodel${loginData}');
      }
    }catch(e){
      print('withoutmodel${loginData}');
      print(e.toString());
    }
    finally{
      isLoading(false);
    }
  }
}
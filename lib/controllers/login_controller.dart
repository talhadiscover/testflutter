import 'dart:convert';

import 'package:get/get.dart';

import '../model/loginmodel.dart';
import '../model/reponse/resplogin.dart';
import '../services/api.dart';

class logincontroller extends GetxController{
  var isLoading = false.obs;
  final starttripmsg = RespLoginmodel(  ).obs;
  List<RespLoginmodel> popularProductList=[];
  var productList = <RespLoginmodel>[].obs;


  hitlogin(name,username ) async {
    try {
      isLoading(true);
      Loginmodel model = Loginmodel(
         name: name,
        username: username,
      );
      var res = await API().login(model.name,model.username);
      var decoded = jsonDecode(res);
      print(decoded);
        List<RespLoginmodel> registrationModel = respLoginmodelFromJson(res);
      productList.value = registrationModel ;
      print(productList[0].address!.city);
       productList.refresh();

    }catch(e){
      print('error${e.toString()}');
    }
    finally{
      isLoading(false);
    }

  }

}

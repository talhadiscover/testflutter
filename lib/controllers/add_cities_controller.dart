import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/addcitiesmodel.dart';
import '../model/reponse/reponseaddcities.dart';
import '../services/api.dart';

class addcitiesss extends GetxController{
  var isLoading = false.obs;
  final starttripmsg = ResponseCities(  ).obs;


  add_cities(deviceId,langId,token) async {
    try {
      isLoading(true);
       Addcities model = Addcities(
        deviceId: deviceId,
        langId: langId,
        token: token,
      );
      var res = await API().addcities(model.deviceId,model.token,model.langId);
      var decoded = jsonDecode(res);
      print(decoded);
      if(decoded['msg']=="token generated"){
        ResponseCities registrationModel = responseCitiesFromJson(res);
        starttripmsg.value = registrationModel;
        starttripmsg.refresh();
       }
     }catch(e){
      print('error${e.toString()}');
    }
    finally{
      isLoading(false);
    }

  }

}

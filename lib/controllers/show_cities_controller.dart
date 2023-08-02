import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/addcitiesmodel.dart';
import '../model/reponse/reponseaddcities.dart';
import '../model/reponse/show_cities_response.dart';
import '../model/show_coities_model.dart';
import '../services/api.dart';

// class showcitiescontroller extends GetxController{
//   var isLoading = false.obs;
//   final starttripmsg = ShowCitiesReponse(  ).obs;
//
//
//   showcities(deviceId,langId,token,countryid) async {
//     try {
//       isLoading(true);
//       ShowCities model = ShowCities(
//         deviceId: deviceId,
//         langId: langId,
//         token: token,
//         countryId: countryid,
//       );
//       var res = await API().showcities(model.deviceId,model.token,model.langId,countryid);
//       var decoded = jsonDecode(res);
//       print(decoded);
//       if(decoded['msg']=="Data Found"){
//         ShowCitiesReponse registrationModel = showCitiesReponseFromJson(res);
//         starttripmsg.value = registrationModel;
//         starttripmsg.refresh();
//       }
//     }catch(e){
//       print('error${e.toString()}');
//     }
//     finally{
//       isLoading(false);
//     }
//
//   }
//
// }
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/addcitiesmodel.dart';

class API {
  var client = http.Client();
  static var baseurl = Uri.parse("https://fluttertest.q3logics.com/api");
  static var addcitiess = "/trial";

    Map<String, String> headers = {
    "Content-Type": "application/json",
  };
   Future addcities( device_id,token,lang_id) async {
   var endPoint = Uri.parse("https://fluttertest.q3logics.com/api/trial?device_id=$device_id&token=$token&lang_id=$lang_id");
    var response = await client.get(endPoint, headers: headers );
    if (response.statusCode == 200) {
      print(response.body);
       return response.body;
    } else {
      print(response.body);
       return response.body;
    }
  }
  Future showcities( device_id,token,lang_id,country_id) async {
    var endPoint = Uri.parse("https://fluttertest.q3logics.com/api/getCities?device_id=$device_id&token=$token&lang_id=$lang_id&country_id=$country_id");
     var response = await client.get(endPoint, headers: headers );
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      print(response.body);
      return response.body;
    }
  }

}

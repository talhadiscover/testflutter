import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/addcitiesmodel.dart';
import '../model/reponse/fetchproduct.dart';
import '../model/reponse/resplogin.dart';

class API {
  var client = http.Client();
  // static var baseurl = Uri.parse("https://fluttertest.q3logics.com/api");
  static var baseurl = Uri.parse("https://gymgo.tectems.com");
  static var imgbaseurl =  "https://gymgo.tectems.com/uploads/" ;
  static var addgym =  "/gym/add-gym" ;
  static var login = "/users/login";
  static var addcitiess = "/trial";
  static var register = "/users/register";

  Map<String, String> headers = {
    "Content-Type": "application/json",
  };
  Future apiRegistration(data) async {
    print(data);
    var endPoint = Uri.parse("$baseurl$register");
    var response = await client.post(endPoint, headers: headers, body: data);
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      return response.body;
    }
  }

  Future apiLogin(data) async {
    print(data);
    var endPoint = Uri.parse("$baseurl$login");
    var response = await client.post(endPoint, headers: headers, body: data);
    if (response.statusCode == 200) {
      print('200${response.body}');
      print(response.body);
      return response.body;
    } else {
      print('400${response.body}');
      return response.body;
    }
  }
  //  Future addcities( device_id,token,lang_id) async {
  //  var endPoint = Uri.parse("https://fluttertest.q3logics.com/api/trial?device_id=$device_id&token=$token&lang_id=$lang_id");
  //   var response = await client.get(endPoint, headers: headers );
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //      return response.body;
  //   } else {
  //     print(response.body);
  //      return response.body;
  //   }
  // }
  //  Future<List<RespLoginmodel>> login(name,username) async {
  //    print(username);
  //    print(name);
  //   var endPoint = Uri.parse("https://jsonplaceholder.typicode.com/users?name=$name&username=$username");
  //   print(endPoint);
  //    var response = await client.get(endPoint, headers: headers );
  //   print(response.body);
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     return respLoginmodelFromJson(response.body);
  //   } else {
  //     print(response.body);
  //     return respLoginmodelFromJson(response.body);
  //   }
  // }
  //  Future showcities(device_id,token,lang_id,country_id) async {
  //   var endPoint = Uri.parse("https://fluttertest.q3logics.com/api/getCities?device_id=$device_id&token=$token&lang_id=$lang_id&country_id=$country_id");
  //    var response = await client.get(endPoint, headers: headers );
  //   if (response.statusCode == 200) {
  //     print(response.body);
  //     return response.body;
  //   } else {
  //     print(response.body);
  //     return response.body;
  //   }
  // }
  //  Future<List<Product>> fetchProducts() async {
  //   var response = await client.get(Uri.parse( 'https://jsonplaceholder.typicode.com/posts'));
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     return productFromJson(jsonString);
  //   } else {
  //    return productFromJson(response.body);
  //   }
  // }

}

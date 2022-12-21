// To parse this JSON data, do
//
//     final responseCities = responseCitiesFromJson(jsonString);

import 'dart:convert';

ResponseCities responseCitiesFromJson(String str) => ResponseCities.fromJson(json.decode(str));

String responseCitiesToJson(ResponseCities data) => json.encode(data.toJson());

class ResponseCities {
  ResponseCities({
    this.status,
    this.data,
    this.maintenanceStatus,
    this.msg,
  });
  int? status;
  String? data;
  bool? maintenanceStatus;
  String? msg;
   factory ResponseCities.fromJson(Map<String, dynamic> json) => ResponseCities(
    status: json["status"],
    data: json["data"],
    maintenanceStatus: json["maintenance_status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data,
    "maintenance_status": maintenanceStatus,
    "msg": msg,
  };
}

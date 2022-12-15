// To parse this JSON data, do
//
//     final addcities = addcitiesFromJson(jsonString);

import 'dart:convert';

Addcities addcitiesFromJson(String str) => Addcities.fromJson(json.decode(str));
String addcitiesToJson(Addcities data) => json.encode(data.toJson());

class Addcities {
  Addcities({
    this.deviceId,
    this.token,
    this.langId,
  });
   String? deviceId;
  String? token;
  String? langId;

  factory Addcities.fromJson(Map<String, dynamic> json) => Addcities(
    deviceId: json["device_id"],
    token: json["token"],
    langId: json["lang_id"],
  );

  Map<String, dynamic> toJson() => {
    "device_id": deviceId,
    "token": token,
    "lang_id": langId,
  };
}

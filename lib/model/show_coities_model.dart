// To parse this JSON data, do
//
//     final showCities = showCitiesFromJson(jsonString);

import 'dart:convert';

ShowCities showCitiesFromJson(String str) => ShowCities.fromJson(json.decode(str));

String showCitiesToJson(ShowCities data) => json.encode(data.toJson());

class ShowCities {
  ShowCities({
    this.deviceId,
    this.token,
    this.langId,
    this.countryId,
  });

  String? deviceId;
  String? token;
  String? langId;
  String? countryId;

  factory ShowCities.fromJson(Map<String, dynamic> json) => ShowCities(
    deviceId: json["device_id"],
    token: json["token"],
    langId: json["lang_id"],
    countryId: json["country_id"],
  );

  Map<String, dynamic> toJson() => {
    "device_id": deviceId,
    "token": token,
    "lang_id": langId,
    "country_id": countryId,
  };
}

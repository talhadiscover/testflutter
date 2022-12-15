// To parse this JSON data, do
//
//     final showCitiesReponse = showCitiesReponseFromJson(jsonString);

import 'dart:convert';

ShowCitiesReponse showCitiesReponseFromJson(String str) => ShowCitiesReponse.fromJson(json.decode(str));

String showCitiesReponseToJson(ShowCitiesReponse data) => json.encode(data.toJson());

class ShowCitiesReponse {
  ShowCitiesReponse({
    this.status,
    this.msg,
    this.data,
  });

  int ?status;
  String? msg;
  List<Datum>? data;

  factory ShowCitiesReponse.fromJson(Map<String, dynamic> json) => ShowCitiesReponse(
    status: json["status"],
    msg: json["msg"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.countryId,
    this.stateId,
  });

  int? id;
  String? name;
  int? countryId;
  int? stateId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    countryId: json["country_id"],
    stateId: json["state_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "country_id": countryId,
    "state_id": stateId,
  };
}

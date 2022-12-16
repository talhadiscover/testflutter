
import 'dart:convert';

Loginmodel loginmodelFromJson(String str) => Loginmodel.fromJson(json.decode(str));

String loginmodelToJson(Loginmodel data) => json.encode(data.toJson());

class Loginmodel {
  Loginmodel({
    this.name,
    this.username,
  });

  String? name;
  String? username;

  factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
    name: json["name"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": username,
  };
}
// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String name;
  String email;
  String dob;
  String age;
  String password;
  String phone;
  String gymName;
  String country;
  int  role;
  int flag;

  RegisterModel({
    required this.name,
    required this.email,
    required this.dob,
    required this.age,
    required this.password,
    required this.phone,
    required this.gymName,
    required this.country,
    required this.role,
    required this.flag,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    name: json["name"],
    email: json["email"],
    dob: json["dob"],
    age: json["age"],
    password: json["password"],
    phone: json["phone"],
    gymName: json["gymName"],
    country: json["country"],
    role: json["role"],
    flag: json["flag"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "dob": dob,
    "age": age,
    "password": password,
    "phone": phone,
    "gymName": gymName,
    "country": country,
    "role": role,
    "flag": flag,
  };
}

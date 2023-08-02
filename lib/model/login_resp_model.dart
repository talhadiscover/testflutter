// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? message;
  User? user;

  LoginModel({
    this.message,
    this.user,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    message: json["message"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": user?.toJson(),
  };
}

class User {
  String? id;
  String? name;
  String? email;
  String? dob;
  String? age;
  String? password;
  String? idPassword;
  String? idPasswordPicture;
  String? country;
  String? profilepicture;
  int? phone;
  int? role;
  int? flag;
  String? token;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  User({
    this.id,
    this.name,
    this.email,
    this.dob,
    this.age,
    this.password,
    this.idPassword,
    this.idPasswordPicture,
    this.country,
    this.profilepicture,
    this.phone,
    this.role,
    this.flag,
    this.token,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    name: json["name"],
    email: json["email"],
    dob: json["dob"],
    age: json["age"],
    password: json["password"],
    idPassword: json["IdPassword"],
    idPasswordPicture: json["IdPassword_picture"],
    country: json["country"],
    profilepicture: json["profilepicture"],
    phone: json["phone"],
    role: json["role"],
    flag: json["flag"],
    token: json["token"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "email": email,
    "dob": dob,
    "age": age,
    "password": password,
    "IdPassword": idPassword,
    "IdPassword_picture": idPasswordPicture,
    "country": country,
    "profilepicture": profilepicture,
    "phone": phone,
    "role": role,
    "flag": flag,
    "token": token,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
  };
}

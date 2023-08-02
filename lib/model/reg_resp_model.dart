// To parse this JSON data, do
//
//     final registerModelResp = registerModelRespFromJson(jsonString);

import 'dart:convert';

RegisterModelResp registerModelRespFromJson(String str) => RegisterModelResp.fromJson(json.decode(str));

String registerModelRespToJson(RegisterModelResp data) => json.encode(data.toJson());

class RegisterModelResp {
  String ?message;

  RegisterModelResp({
      this.message,
  });

  factory RegisterModelResp.fromJson(Map<String, dynamic> json) => RegisterModelResp(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}

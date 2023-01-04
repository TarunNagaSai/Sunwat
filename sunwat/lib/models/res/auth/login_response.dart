// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:sunwat/models/entities/auth/user_data.dart';

class LoginResponse {
  LoginResponse({
    required this.status,
    required this.message,
    this.data,
  });

  bool status;
  String message;
  List<UserData>? data;

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        data: List<UserData>.from(
          json["data"].map(
            (x) => UserData.fromJson(
              x,
            ),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(
          data!.map(
            (x) => x.toJson(),
          ),
        ),
      };
}

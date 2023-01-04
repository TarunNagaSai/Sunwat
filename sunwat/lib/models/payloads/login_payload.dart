import 'dart:convert';

class LoginPayload {
  LoginPayload({
    required this.username,
    required this.password,
  });

  /// send a string which can be number, email and username
  String username;

  /// send a serect data password which is also a string
  String password;

  factory LoginPayload.fromRawJson(String str) =>
      LoginPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginPayload.fromJson(Map<String, dynamic> json) => LoginPayload(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

import 'dart:convert';

class UserData {
  UserData({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    this.dob,
    this.address,
    this.bankname,
    this.obname,
    this.bankaccno,
    this.accholdername,
    this.ifsccode,
    required this.status,
    required this.role,
    this.lastlogin,
    required this.eid,
  });

  String id;
  String name;
  String username;
  String password;
  dynamic dob;
  dynamic address;
  dynamic bankname;
  dynamic obname;
  dynamic bankaccno;
  dynamic accholdername;
  dynamic ifsccode;
  String status;
  String role;
  dynamic lastlogin;
  String eid;

  factory UserData.fromRawJson(String str) =>
      UserData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        password: json["password"],
        dob: json["dob"],
        address: json["address"],
        bankname: json["bankname"],
        obname: json["obname"],
        bankaccno: json["bankaccno"],
        accholdername: json["accholdername"],
        ifsccode: json["ifsccode"],
        status: json["status"],
        role: json["role"],
        lastlogin: json["lastlogin"],
        eid: json["eid"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "password": password,
        "dob": dob,
        "address": address,
        "bankname": bankname,
        "obname": obname,
        "bankaccno": bankaccno,
        "accholdername": accholdername,
        "ifsccode": ifsccode,
        "status": status,
        "role": role,
        "lastlogin": lastlogin,
        "eid": eid,
      };
}

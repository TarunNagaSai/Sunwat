import 'package:dio/dio.dart';
import 'package:sunwat/core/http_helper.dart';
import 'package:sunwat/models/payloads/login_payload.dart';
import 'package:sunwat/models/res/auth/login_response.dart';

class AuthServices {
  /// Api call to send login credentials in [payload] and
  /// get the [LoginResponse] response data
  static Future<LoginResponse> authLogin(LoginPayload payload) async {
    try {
      var dio = await getDio();
      var response = await dio.request(
        "Home/login",
        data: payload.toJson(),
        options: Options(method: 'POST'),
      );
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      return LoginResponse(
        status: false,
        message: e.toString(),
      );
    }
  }
}

import 'package:get_storage/get_storage.dart';
import 'package:sunwat/core/log_helper.dart';
import 'package:sunwat/models/entities/auth/user_data.dart';

final box = GetStorage();

Future saveToken(String token) async {
  try {
    await box.write("token", token);
  } catch (e) {
    logger.e(e);
  }
}

Future removeToken() async {
  try {
    await box.remove("token");
  } catch (e) {
    logger.e(e);
  }
}

String? getToken() {
  try {
    var token = box.read("token");
    return token;
  } catch (e) {
    logger.e(e);
    return null;
  }
}

/// this method stores the user data in local data
/// if storing sucess then returns true
Future<bool> saveUserData(UserData userData) async {
  try {
    await box.write("userData", userData);
    return true;
  } catch (e) {
    return false;
  }
}

dynamic getUserData() {
  try {
    var userData = box.read("userData");
    return userData;
  } catch (e) {
    logger.e(e);
    return null;
  }
}

Future removeUserData() async {
  try {
    await box.remove("userData");
  } catch (e) {
    logger.e(e);
  }
}

Future initialOpen(bool newStart) async {
  try {
    await box.write("freshStart", newStart);
  } catch (e) {
    logger.e(e);
  }
}

bool readUser() {
  try {
    var use = box.read("freshStart");
    if (use != null) {
      return true;
    }
    return false;
  } catch (e) {
    logger.e(e);
    return false;
  }
}

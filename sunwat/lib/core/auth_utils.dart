import 'package:get_storage/get_storage.dart';
import 'package:sunwat/core/log_helper.dart';

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

/// TODO: this two methods should be uncommented ones we get
/// user data model

// UserTokenData? decodeToken() {
//   var token = getToken();
//   if (token != null) {
//     var payload = Jwt.parseJwt(token);
//     return UserTokenData.fromJson(payload);
//   } else {
//     return null;
//   }
// }

// bool hasLoginExpired() {
//   var res = getToken();
//   if (res != null) {
//     UserTokenData payload = UserTokenData.fromJson(Jwt.parseJwt(res));
//     return (DateTime.fromMillisecondsSinceEpoch(payload.exp * 1000)
//         .isBefore(DateTime.now()));
//   } else {
//     return true;
//   }
// }

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
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

void storeResentSearch(List<String> searchTexts) {
  box.write("searchList", searchTexts);
}

List<String>? getResentSearches() {
  try {
    var list = box.read("searchList");
    return List<String>.from(list);
  } catch (e) {
    return null;
  }
}

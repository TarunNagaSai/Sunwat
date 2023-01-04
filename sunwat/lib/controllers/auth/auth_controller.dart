import 'package:get/get.dart';
import 'package:sunwat/core/auth_utils.dart';
import 'package:sunwat/core/routes.dart';
import 'package:sunwat/models/entities/auth/user_data.dart';
import 'package:sunwat/models/payloads/login_payload.dart';
import 'package:sunwat/services/auth_services.dart';

enum AuthState { authorized, unAuthorized, authInitalization }

class AuthController extends GetxController {
  AuthState authState = AuthState.authInitalization;
  late UserData userData;

  @override
  void onInit() {
    checkUserData();
    super.onInit();
  }

  /// this method sends the login payload to the [AuthServices]
  /// and get the response from it
  Future<bool> loginUserDetails(
    String username,
    String password,
  ) async {
    LoginPayload payload = LoginPayload(password: password, username: username);
    var loginReposne = await AuthServices.authLogin(payload);

    if (loginReposne.status) {
      userData = loginReposne.data!.first;

      saveAuthData();
      authState = AuthState.authorized;
      update();
      return true;
    } else {
      authState = AuthState.unAuthorized;
      update();
      return false;
    }
  }

  Future<void> saveAuthData() async {
    await saveUserData(userData);
  }

  void checkUserData() {
    var data = getUserData();

    if (data != null) {
      userData = UserData.fromJson(data);
      authState = AuthState.authorized;
    } else {
      authState = AuthState.unAuthorized;
    }
    update();
  }

  void logoutUser() {
    removeUserData();
    authState = AuthState.unAuthorized;
    update();
    Get.offNamed(GetxRoutes.login);
  }
}

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sunwat/UI/screens/landing/splash_screen.dart';

class GetxRoutes {
  /// All the routes name are initalized here and are assigned to the
  /// respective GetPage with the widget passing to it

  /// [splash] is the inital route of the app
  static const String splash = '/',
      login = '/login',
      forgotPassword = '/forgotPasswordScreen';

  /// [routes] containes all the GetPages with the assigned name, page and the bindings to it in a list
  /// that list is feeded to the [GetMaterialApp] getPages
  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
  ];
}

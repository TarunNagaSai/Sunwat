import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sunwat/UI/screens/landing/splash_screen.dart';
import 'package:sunwat/UI/screens/ro_plant/plant_no_screen.dart';
import 'package:sunwat/UI/screens/ro_plant/report_form.dart';

class GetxRoutes {
  /// All the routes name are initalized here and are assigned to the
  /// respective GetPage with the widget passing to it

  /// [splash] is the inital route of the app
  static const String splash = '/',
      login = '/login',
      forgotPassword = '/forgotPasswordScreen',
      roPlantReport = '/roPlantReportScreen',
      plantNo = '/plnatNoScreen';

  /// [routes] containes all the GetPages with the assigned name, page and the bindings to it in a list
  /// that list is feeded to the [GetMaterialApp] getPages
  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: plantNo,
      page: () => PlantNoScreen(),
    ),
    GetPage(
      name: roPlantReport,
      page: () => const RoPlantReportScreen(),
    ),
  ];
}

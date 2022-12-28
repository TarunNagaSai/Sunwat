import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sunwat/core/routes.dart';
import 'package:sunwat/core/theme.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      getPages: GetxRoutes.routes,
      theme: AppThemes.lightTheme,
      initialRoute: GetxRoutes.plantNo,
    ),
  );
}

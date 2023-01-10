import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunwat/controllers/auth/auth_controller.dart';

import 'package:sunwat/core/routes.dart';
import 'package:sunwat/core/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static AuthController get authData => Get.find();

  @override
  void initState() {
    super.initState();
    checkAuthentication();
  }

  void checkAuthentication() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () async {
        if (authData.authState == AuthState.authorized) {
          Get.offNamed(GetxRoutes.plantNo);
        } else {
          Get.offNamed(GetxRoutes.login);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.7,
      // width: MediaQuery.of(context).size.width * 0.9,
      // Below is the code for Linear Gradient.
      decoration: AppThemes.decoration,
      child: Center(
        child: Image.asset(
          "assets/image/splash.png",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

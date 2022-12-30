import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sunwat/core/routes.dart';

import '../../../core/colors_constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=> Get.toNamed(
              GetxRoutes.plantNo,
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.9,
        // Below is the code for Linear Gradient.
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorsConstants.blueprimary, ColorsConstants.white],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset("image/splash.png") ,
        )
    );
  }
}
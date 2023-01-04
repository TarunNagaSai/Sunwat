import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:sunwat/controllers/auth/auth_controller.dart';
import 'package:sunwat/core/dimensions.dart';
import 'package:sunwat/core/routes.dart';
import 'package:sunwat/core/theme.dart';

class PlantNoScreen extends StatelessWidget {
  PlantNoScreen({super.key});

  final TextEditingController plantNoController = TextEditingController();
  static AuthController get authData => Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
            child: Center(
              child: Image.asset(
                "assets/image/splash.png",
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              authData.logoutUser();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Logout Successful",
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.power_settings_new,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: AppThemes.decoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Please Click on RO Plant Report to enter detials",
                style: TextStyle(
                  fontSize: Dimensions.fontSizeLarge,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Get.toNamed(
                    GetxRoutes.roPlantReport,
                  );
                },
                child: const Text(
                  "RO Plant Report",
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Plant Reports on Date:08/12/2022 by User: SEKHAR",
                style: TextStyle(
                  fontSize: Dimensions.fontSizeLarge,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 110,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "S.No. RO Plant Name",
                      style: TextStyle(
                        fontSize: Dimensions.fontSizeLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: plantNoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Plant Name",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

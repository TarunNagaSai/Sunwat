import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sunwat/controllers/auth/auth_controller.dart';
import 'package:sunwat/core/dimensions.dart';
import 'package:sunwat/core/routes.dart';
import 'package:sunwat/core/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenWidgetState createState() {
    return LoginScreenWidgetState();
  }
}

class LoginScreenWidgetState extends State<LoginScreen> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  static AuthController get authState => Get.find();
  TextEditingController phoneController = TextEditingController(),
      passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // Below is the code for Linear Gradient.
          decoration: AppThemes.decoration,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Form(
                key: loginFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/splash.png",
                      height: 300,
                      width: 300,
                    ),
                    TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        //labelText: 'Phone Number',
                        hintText: 'Phone Number',
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Colors.blueAccent),
                          //<-- SEE HERE
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      // keyboardType: TextInputType.number,
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.digitsOnly,
                      // ],
                      // validator: (value) {
                      //   if (value!.isNotEmpty) {
                      //     String numberPatttern =
                      //         r'(^(?:[+0]9)?[6-9]{1}?[0-9]{9}$)';
                      //     RegExp numberRegExp = RegExp(numberPatttern);
                      //     if (numberRegExp.hasMatch(value)) {
                      //       return null;
                      //     } else {
                      //       return "Enter a valid phone number";
                      //     }
                      //   } else {
                      //     return "Enter a Phone number";
                      //   }
                      // },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return " Enter Password";
                        } else {
                          return null;
                        }
                      }),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        // labelText: 'Password',
                        hintText: 'Enter password',
                        contentPadding: const EdgeInsets.only(
                          left: 14.0,
                          bottom: 8.0,
                          top: 8.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.blueAccent,
                          ),
                          //<-- SEE HERE
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.indigo, // foreground
                        padding: const EdgeInsets.all(
                          24.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (loginFormKey.currentState!.validate()) {
                          bool response = await authState.loginUserDetails(
                              phoneController.text, passwordController.text);
                          if (response) {
                            Get.offNamed(
                              GetxRoutes.plantNo,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Login Failed",
                                ),
                              ),
                            );
                          }
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(
                          GetxRoutes.forgotPassword,
                        );
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: Dimensions.fontSizeLarge,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

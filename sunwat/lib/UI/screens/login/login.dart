import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/dimensions.dart';
import '../../../core/routes.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenWidgetState createState() {
    return LoginScreenWidgetState();
  }
}

class LoginScreenWidgetState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      // Below is the code for Linear Gradient.
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.cyan],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset("image/splash.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                //labelText: 'Phone Number',
                hintText: 'Phone Number',
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Colors.blueAccent),
                  //<-- SEE HERE
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
               // labelText: 'Password',
                hintText: 'Enter password',
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Colors.blueAccent),
                  //<-- SEE HERE
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.indigo, // foreground
                    padding: const EdgeInsets.all(24.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),

                onPressed: () {},
                child: const Text('Log In',
                  style: TextStyle(
                  fontSize: Dimensions.fontSizeLarge,
                ),),
              ),
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
            child: const Text("Forgot Password?", style: TextStyle(
              fontSize: Dimensions.fontSizeLarge,
            ),),
          )
        ],
      ),
    ));
  }
}

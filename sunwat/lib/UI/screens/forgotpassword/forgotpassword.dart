import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/dimensions.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ForgotPasswordScreenWidgetState createState() {
    return ForgotPasswordScreenWidgetState();
  }
}

class ForgotPasswordScreenWidgetState extends State<ForgotPasswordScreen> {
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
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset("image/key.png"),
          ),
          const Padding(
            padding: EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
            child: Text(
              'Enter your email, phone, or username  and we will send you a link to change a new password',
              style: TextStyle(
                fontSize: Dimensions.fontSizeLarge,
              ),
              textAlign: TextAlign.center,
            ),
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
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

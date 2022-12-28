import 'package:flutter/material.dart';

class RoPlantReportScreen extends StatelessWidget {
  const RoPlantReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RO Plant Report",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Yet to develop",
            ),
          ),
        ],
      ),
    );
  }
}

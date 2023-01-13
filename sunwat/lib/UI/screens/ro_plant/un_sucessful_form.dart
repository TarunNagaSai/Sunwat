import 'package:flutter/material.dart';
import 'package:sunwat/core/theme.dart';

class UncessFullFormSvreen extends StatelessWidget {
  const UncessFullFormSvreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RO Plant Report",
        ),
      ),
      body: Container(
        decoration: AppThemes.decoration,
        child: Column(),
      ),
    );
  }
}

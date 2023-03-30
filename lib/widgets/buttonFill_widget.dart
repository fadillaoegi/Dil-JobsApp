import 'package:flutter/material.dart';
import 'package:diljobsapp/themes/colors.dart';

import '../themes/fontStyle.dart';

class ButtonFill extends StatelessWidget {
  const ButtonFill({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: 300.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColordilJobsApp.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66.0))),
        child: Text(
          "Get Started",
          style: primary500.copyWith(fontSize: 16.0),
        ),
      ),
    );
  }
}

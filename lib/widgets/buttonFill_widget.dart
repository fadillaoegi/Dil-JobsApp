import 'package:flutter/material.dart';
import 'package:diljobsapp/themes/colors.dart';

import '../themes/fontStyle.dart';

class ButtonFill extends StatelessWidget {
  double? height;
  double? width;
  String? text;
  ButtonFill({super.key, this.width = 300.0, this.height = 45.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: ColordilJobsApp.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66.0))),
        child: Text(
          text!,
          style: primary400.copyWith(fontSize: 16.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:diljobsapp/themes/colors.dart';

import '../themes/font_style.dart';

// ignore: must_be_immutable
class ButtonFill extends StatelessWidget {
  double? height;
  double? width;
  String? text;
  Color? color;
  Color? fontColor;
  VoidCallback? onpress;
  ButtonFill(
      {super.key,
      this.width = 300.0,
      this.height = 45.0,
      this.text,
      this.onpress,
      this.color = ColordilJobsApp.white,
      this.fontColor = ColordilJobsApp.primary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66.0))),
        child: Text(
          text!,
          style: primary400.copyWith(fontSize: 16.0, color: fontColor),
        ),
      ),
    );
  }
}

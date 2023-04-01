import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/fontStyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonOutline extends StatelessWidget {
  double? height;
  double? widht;
  VoidCallback? onPress;
  String? text;
  ButtonOutline(
      {super.key,
      this.height = 45.0,
      this.widht = 300.0,
      this.onPress,
      this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: widht,
      child: OutlinedButton(
          onPressed: onPress,
          style: OutlinedButton.styleFrom(
              foregroundColor: ColordilJobsApp.white,
              side: const BorderSide(color: ColordilJobsApp.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66.0))),
          child: Text(
            text!,
            style: white400.copyWith(fontSize: 16.0),
          )),
    );
  }
}

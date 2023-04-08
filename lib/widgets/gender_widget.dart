import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderWidget extends StatelessWidget {
  GenderWidget({super.key, this.icon, this.text});
  String? text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30.0,
          ),
          Text(
            text!,
            style: black400.copyWith(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}

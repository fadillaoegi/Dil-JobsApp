import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListDetail extends StatelessWidget {
  ListDetail({super.key, this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(right: 20.0),
              height: 12.0,
              width: 12.0,
              child: Image.asset("assets/images/dot.png")),
          Text(
            text!,
            style: black300.copyWith(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}

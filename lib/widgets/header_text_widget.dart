import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderText extends StatelessWidget {
  String? textOne;
  String? textTwo;
  HeaderText({super.key, this.textOne, this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textOne!,
            style: grey300.copyWith(fontSize: 16.0),
          ),
          Text(
            textTwo!,
            style: black500.copyWith(fontSize: 24.0),
          )
        ],
      ),
    );
  }
}

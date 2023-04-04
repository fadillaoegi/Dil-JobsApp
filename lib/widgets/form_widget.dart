// import 'dart:async';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormCustom extends StatelessWidget {
  // ControllerCallback? controllerForm;
  String? text;
  bool? obsecure;
  FormCustom({super.key, this.text, this.obsecure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: grey300.copyWith(fontSize: 16.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          obscureText: obsecure!,
          // controller: controllerForm!,
          decoration: InputDecoration(
            fillColor: const Color(0xffF1F0F5),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100.0),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: ColordilJobsApp.primary)),
          ),
        )
      ],
    );
  }
}

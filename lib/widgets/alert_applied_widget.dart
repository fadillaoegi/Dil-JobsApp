import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

class AlertApplied extends StatelessWidget {
  const AlertApplied({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: const Color.fromARGB(255, 228, 12, 91)),
        child: Center(
          child: Text(
            "You have applied this job and the \t recruiter will contact you",
            style: white400.copyWith(fontSize: 16.0),
            textAlign: TextAlign.center,
          ),
        ));
  }
}

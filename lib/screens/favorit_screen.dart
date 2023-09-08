import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

class Favorit extends StatelessWidget {
  const Favorit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            "FAVORIT SCREEN",
            style: black500.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

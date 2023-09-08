import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            "PROFILE SCREEN",
            style: black500.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "FAVORIT NOTIFICATION",
            style: black500.copyWith(fontSize: 30.0),
          )
        ]),
      ),
    );
  }
}

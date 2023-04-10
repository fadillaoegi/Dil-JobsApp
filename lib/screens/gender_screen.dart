import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender",
              style: black500.copyWith(fontSize: 24.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.male,
                        size: 30.0,
                      ),
                      Text(
                        "Male",
                        style: black400.copyWith(fontSize: 14.0),
                      )
                    ],
                  ),
                ),
                GenderWidget(
                  icon: Icons.female,
                  text: "Femalee",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:diljobsapp/providers/gender_provider.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:diljobsapp/providers/gender_provider.dart';

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
            Consumer<GenderProvider>(
              builder: (context, GenderProvider, _) => Text(
                "Gender Picker",
                style: TextStyle(
                    color: GenderProvider.defaultColor, fontSize: 34.0),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<GenderProvider>(
                  builder: (context, GenderProvider, _) => GestureDetector(
                    onTap: () {
                      GenderProvider.gender = true;
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: GenderProvider.maleColor,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: GenderProvider.maleColor,
                            size: 30.0,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                color: GenderProvider.maleColor,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Consumer<GenderProvider>(
                  builder: (context, GenderProvider, _) => GestureDetector(
                    onTap: () {
                      GenderProvider.gender = false;
                    },
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: GenderProvider.femaleColor,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: GenderProvider.femaleColor,
                            size: 30.0,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                color: GenderProvider.femaleColor,
                                fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // GenderWidget(
                //   icon: Icons.female,
                //   text: "Female",
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/widgets/buttomOut_widget.dart';
import 'package:flutter/material.dart';

import '../themes/fontStyle.dart';
import '../widgets/ButtonFill_widget.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fill)),
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Build Your Next Future Career Like a Master",
                    style: white400.copyWith(fontSize: 32.0),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "18,000 jobs available",
                    style: white300.copyWith(fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 450.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const ButtonFill(),
                        const SizedBox(
                          height: 24.0,
                        ),
                        ButtonOutline(
                          onPress: () {},
                          text: "Sign In",
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
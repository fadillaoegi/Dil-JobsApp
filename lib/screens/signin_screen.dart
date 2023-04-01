import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderText(
              textOne: "Sign In",
              textTwo: "Begin New Journey",
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColordilJobsApp.primary, width: 1.0),
                    borderRadius: BorderRadius.circular(100.0)),
                child: const SizedBox(
                  height: 120,
                  width: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pict.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

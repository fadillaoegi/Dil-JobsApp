import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/avatar_widget.dart';
import 'package:diljobsapp/widgets/button_fill_widget.dart';
import 'package:diljobsapp/widgets/form_widget.dart';
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                textOne: "Sign In",
                textTwo: "Build Your Career",
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/work.png",
                  width: 261.0,
                  height: 240.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              FormCustom(
                text: "Email",
              ),
              const SizedBox(
                height: 6.0,
              ),
              FormCustom(
                text: "Email",
                obsecure: true,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: ButtonFill(
                  onpress: () => Navigator.pushReplacementNamed(
                      context, RouteDiljobsapp.home),
                  text: "Sign In",
                  color: ColordilJobsApp.primary,
                  fontColor: ColordilJobsApp.white,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, RouteDiljobsapp.signup),
                    child: Text(
                      "Sign Up",
                      style: grey300.copyWith(fontSize: 16.0),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

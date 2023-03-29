import 'dart:async';
import 'package:diljobsapp/screens/signin_secreen.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SplashStart();
  }

  // ignore: non_constant_identifier_names
  SplashStart() async {
    var durasiSplash = const Duration(seconds: 3);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const SignIn();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: ColordilJobsApp.primary,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 59.0,
                height: 76.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "DILJOBSAPP",
                style: TextStyle(fontSize: 32.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

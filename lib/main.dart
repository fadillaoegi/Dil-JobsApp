import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/screens/categories.dart';
import 'package:diljobsapp/screens/detail_screen.dart';
import 'package:diljobsapp/screens/signin_screen.dart';
import 'package:diljobsapp/screens/signup_screen.dart';
import 'package:diljobsapp/screens/starter_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Splash(),
      initialRoute: RouteDiljobsapp.splash,
      routes: {
        RouteDiljobsapp.starter: (context) => const Starter(),
        RouteDiljobsapp.signin: (context) => const SignIn(),
        RouteDiljobsapp.signup: (context) => const SignUp(),
        RouteDiljobsapp.category: (context) => const Categories(),
        RouteDiljobsapp.detail: (context) => const Detail(),
      },
    );
  }
}

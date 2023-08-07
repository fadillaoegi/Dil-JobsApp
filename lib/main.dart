import 'package:diljobsapp/providers/gender_provider.dart';
import 'package:diljobsapp/routes/routes_diljobapp.dart';
// import 'package:diljobsapp/screens/categories_screen.dart';
import 'package:diljobsapp/screens/detail_screen.dart';
import 'package:diljobsapp/screens/favorit_screen.dart';
import 'package:diljobsapp/screens/gender_screen.dart';
// import 'package:diljobsapp/screens/gender_screen.dart';
import 'package:diljobsapp/screens/home_screen.dart';
import 'package:diljobsapp/screens/navbar.dart';
import 'package:diljobsapp/screens/notification_screen.dart';
import 'package:diljobsapp/screens/profile_screen.dart';
import 'package:diljobsapp/screens/signin_screen.dart';
import 'package:diljobsapp/screens/signup_screen.dart';
import 'package:diljobsapp/screens/splash_screen.dart';
import 'package:diljobsapp/screens/starter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GenderProvider>(
      create: (context) => GenderProvider(),
      child: MaterialApp(
        // home: const Gender(),
        initialRoute: RouteDiljobsapp.splash,
        routes: {
          RouteDiljobsapp.splash: (context) => const Splash(),
          RouteDiljobsapp.starter: (context) => const Starter(),
          RouteDiljobsapp.signin: (context) => const SignIn(),
          RouteDiljobsapp.signup: (context) => const SignUp(),
          // RouteDiljobsapp.category: (context) => const Categories(),
          RouteDiljobsapp.gender:(context) => const Gender(),
          RouteDiljobsapp.detail: (context) => const Detail(),
          RouteDiljobsapp.home: (context) => const Home(),
          RouteDiljobsapp.main: (context) => const Navbar(),
          RouteDiljobsapp.profile: (context) => const Profile(),
          RouteDiljobsapp.notification: (context) => const Notif(),
          RouteDiljobsapp.favorite: (context) => const Favorit(),
        },
      ),
    );
  }
}

import 'package:diljobsapp/providers/auth_provider.dart';
import 'package:diljobsapp/providers/category_provider.dart';
import 'package:diljobsapp/providers/gender_provider.dart';
import 'package:diljobsapp/providers/height_provider.dart';
import 'package:diljobsapp/providers/job_provider.dart';
import 'package:diljobsapp/providers/user_provider.dart';
import 'package:diljobsapp/providers/weight_provider.dart';
import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/screens/cal_ideal_screen.dart';
import 'package:diljobsapp/screens/favorit_screen.dart';
import 'package:diljobsapp/screens/gender_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GenderProvider>(create: (_) => GenderProvider()),
        ChangeNotifierProvider<WeightProvider>(create: (_) => WeightProvider()),
        ChangeNotifierProvider<HeightProvider>(create: (_) => HeightProvider()),
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
        ChangeNotifierProvider<CategoryProvider>(
            create: (_) => CategoryProvider()),
        ChangeNotifierProvider(
          create: (_) => JobProvider(),
        )
      ],
      child: MaterialApp(
        // home: const Gender(),
        initialRoute: RouteDiljobsapp.splash,
        debugShowCheckedModeBanner: false,
        routes: {
          RouteDiljobsapp.splash: (context) => const Splash(),
          RouteDiljobsapp.starter: (context) => const Starter(),
          RouteDiljobsapp.signin: (context) => const SignIn(),
          RouteDiljobsapp.signup: (context) => const SignUp(),
          RouteDiljobsapp.genderPicker: (context) => const Gender(),
          RouteDiljobsapp.calIdeal: (context) => const CalIdeal(),
          // RouteDiljobsapp.detail: (context) => const Detail(),
          RouteDiljobsapp.home: (context) => const Home(),
          RouteDiljobsapp.main: (context) => const Navbar(),
          RouteDiljobsapp.profile: (context) => const Profile(),
          RouteDiljobsapp.notification: (context) => const NotifScreen(),
          RouteDiljobsapp.favorite: (context) => const Favorit(),
        },
      ),
    );
  }
}

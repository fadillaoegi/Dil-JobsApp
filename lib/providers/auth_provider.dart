import 'dart:convert';

import 'package:diljobsapp/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  // NOTE: AUTH REGISTER
  Future<UserModel?> register(
      String name, String email, String password, String goal) async {
    try {
      var body = {
        "email": email,
        "password": password,
        "name": name,
        "goal": goal
      };

      var response = await http.post(
          Uri.parse("https://future-jobs-api.vercel.app/register"),
          body: body);

      // ignore: avoid_print
      // print(response.statusCode);
      // ignore: avoid_print
      // print(body);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      // ignore: avoid_print
      print("Erorr pada Auth: $e");
      return null;
    }
  }

  // NOTE: AUTH LOGIN
  Future<UserModel?> login(String email, String password) async {
    try {
      var body = {
        "email": email,
        "password": password,
      };

      var response = await http.post(
          Uri.parse("https://future-jobs-api.vercel.app/login"),
          body: body);

      // ignore: avoid_print
      print(response.statusCode);
      // ignore: avoid_print
      print(body);

      if (response.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      // ignore: avoid_print
      print("Erorr pada Auth: $e");
      return null;
    }
  }
}

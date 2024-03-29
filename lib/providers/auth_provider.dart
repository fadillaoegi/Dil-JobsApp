// ignore_for_file: avoid_print, duplicate_ignore

import 'dart:convert';

import 'package:diljobsapp/apis/api_config.dart';
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

      var response = await http.post(Uri.parse(ApiConfigDilJob.apiAuthRegister),
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

  // NOTE: AUTH LOGIN
  // Future<UserModel?> login(String email, String password) async {
  //   try {
  //     var body = {
  //       "email": email,
  //       "password": password,
  //     };

  //     var response =
  //         await http.post(Uri.parse(ApiConfigDilJob.apiAuthLogin), body: body);

  //     // ignore: avoid_print
  //     print(response.statusCode);
  //     // ignore: avoid_print
  //     print(body);

  //     if (response.statusCode == 200) {
  //       return UserModel.fromJson(jsonDecode(response.body));
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print("Erorr pada Auth: $e");
  //     return null;
  //   }
  // }

  Future<UserModel?> login(String email, String password) async {
    try {
      final body = {
        "email": email,
        "password": password,
      };

      final response =
          await http.post(Uri.parse(ApiConfigDilJob.apiAuthLogin), body: body);

      // Print status code for debugging
      // ignore: avoid_print
      print("Status Code: ${response.statusCode}");

      if (response.statusCode == 200) {
        print(response.body);
        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        // Print error details for debugging
        // ignore: avoid_print
        print("Failed to login. Error response: ${response.body}");
        return null;
      }
    } catch (e) {
      // Print generic error for debugging
      // ignore: avoid_print
      print("Error during login: $e");
      return null;
    }
  }
}

import 'package:diljobsapp/models/user_model.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel newUser) {
    _user = newUser;

    notifyListeners();
  }
}

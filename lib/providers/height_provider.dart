import 'package:flutter/material.dart';

class HeightProvider with ChangeNotifier {
  double _height = 50;

  double get height => _height;

  set height(double newValue) {
    _height = newValue;

    notifyListeners();
  }
}

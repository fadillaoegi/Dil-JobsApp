import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool _isMale = true;

  bool get gender => _isMale;

  set gender(bool newGender) {
    _isMale = newGender;
    notifyListeners();
  }
  get defaultColor => _isMale ? Colors.blue : Colors.pink;
  get maleColor => _isMale ? Colors.blue : Colors.grey;
  get femaleColor => _isMale ? Colors.grey : Colors.pink;
}

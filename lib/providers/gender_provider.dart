import 'package:flutter/widgets.dart';

class GenderProvider with ChangeNotifier {
  bool isMale = true;

  bool get gender => isMale;

  set gender(bool newGender) {
    isMale = newGender;
    notifyListeners();
  }
}

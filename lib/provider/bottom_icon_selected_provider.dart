import 'package:flutter/material.dart';

class BottomIconSelectedProvider extends ChangeNotifier {
  List<bool> icons = [true, false, false, false];

  void changeActivatedIcon(int index) {
    for (var i = 0; i < icons.length; i++) {
      if (i == index) {
        icons[i] = true;
      } else {
        icons[i] = false;
      }
    }
    notifyListeners();
  }
}

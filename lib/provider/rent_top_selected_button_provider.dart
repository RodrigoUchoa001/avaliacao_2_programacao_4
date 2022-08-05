import 'package:flutter/material.dart';

class RentTopSelectedButtonProvider extends ChangeNotifier {
  List<bool> buttons = [false, true, false];

  void changeActivatedIcon(int index) {
    for (var i = 0; i < buttons.length; i++) {
      if (i == index) {
        buttons[i] = true;
      } else {
        buttons[i] = false;
      }
    }
    notifyListeners();
  }

  int getIconActivated() {
    for (int i = 0; i < buttons.length; i++) {
      if (buttons[i]) {
        return i;
      }
    }
    return -1;
  }
}

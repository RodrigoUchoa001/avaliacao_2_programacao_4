import 'package:flutter/material.dart';

class CategorySelectedProvider extends ChangeNotifier {
  List<bool> categories = [true, false, false, false];

  void selecionaAtividade(int index) {
    for (var i = 0; i < categories.length; i++) {
      if (i == index) {
        categories[i] = true;
      } else {
        categories[i] = false;
      }
    }
    notifyListeners();
  }
}

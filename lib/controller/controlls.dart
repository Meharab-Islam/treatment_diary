import 'package:flutter/material.dart';

class ScreenChange extends ChangeNotifier {
  int count = 0;

   increment(int index) {
    count = index;
    notifyListeners();
  }
}

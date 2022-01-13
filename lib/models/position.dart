import 'package:flutter/material.dart';

class PositionModel extends ChangeNotifier {
  int _currentPosition = 0;

  int get index => _currentPosition;

  void toPage1() {
    _currentPosition = 0;
    notifyListeners();
  }

  void toPage2() {
    _currentPosition = 1;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double _value = 1.0;

  double get slidervalue => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

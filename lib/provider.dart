import 'package:flutter/material.dart';

class color1provider with ChangeNotifier {
  double _value = 1;
  double get value => _value;

  setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

class color2provider with ChangeNotifier {
  double _value = 1;
  double get value => _value;

  setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

class color3provider with ChangeNotifier {
  double _value = 1;
  double get value => _value;

  setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

class color4provider with ChangeNotifier {
  double _value = 1;
  double get value => _value;

  setValue(double val) {
    _value = val;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  CounterProvider(String base) {
    if (int.tryParse(base) != null) _counter = int.parse(base);
  }

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void toCero() {
    _counter = 0;
    notifyListeners();
  }
}

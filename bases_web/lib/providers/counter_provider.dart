import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  get counter => this._counter;

  void increment() {
    this._counter++;
    // Notifica a los providers los cambios realizados
    // para que se redibujen.
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }
}

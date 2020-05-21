import 'dart:math';

class Calculator {
  final int heigth;
  final int weight;

  double _bmi;

  Calculator({this.heigth, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweigth';
    }
  }

  String getIterpretation() {
    if (_bmi > 25) {
      return 'You need to exercise more :(';
    } else if (_bmi > 18.5) {
      return 'Good job! :)';
    } else {
      return 'You need to eat a little bit more :(';
    }
  }
}

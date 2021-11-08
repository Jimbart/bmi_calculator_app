import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpolation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more and eat less.';
    } else if (_bmi > 18.5) {
      return 'You have an normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Please eat more.';
    }
  }
}

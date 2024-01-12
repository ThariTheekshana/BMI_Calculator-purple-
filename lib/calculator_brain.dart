import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    // ignore: no_leading_underscores_for_local_identifiers
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVER WEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body weight is higher than normal body weight. So do more exercise.!!!';
    } else if (_bmi > 18.5) {
      return 'Your body weight is normal. It\'s great.!!!';
    } else {
      return 'Your body weight is higher than normal body weight. So you can eat a bit more.!!! ';
    }
  }
}

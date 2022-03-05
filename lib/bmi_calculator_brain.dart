import 'dart:math';

class BmiBrain {
  BmiBrain({this.height, this.weight});
  int height;
  int weight;
  double _bmi;

  String bmiCalc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi > 18.5 && _bmi < 24.5) {
      return 'NORMAL';
    } else {
      return 'OVERWEIGHT';
    }
  }

  String bmiInterpretation() {
    if (_bmi < 18.5) {
      return 'Your Weight is lower than the general weight, You have to eat a lot.';
    } else if (_bmi > 18.5 && _bmi < 24.5) {
      return 'Your Weight is normal Your can follow your daily schedule. ';
    } else {
      return 'Your weight is higher than the general weight , You have to do a lot of excercises.';
    }
  }
}

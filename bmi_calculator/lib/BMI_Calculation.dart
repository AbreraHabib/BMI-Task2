import 'dart:math';

class BMI_Calculation {
  BMI_Calculation({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  void calculate() {
    _bmi = weight / pow(height / 100, 2);
  }

  String GetBMIValue() {
    calculate();
    return _bmi.toStringAsFixed(1);
  }

  String GetResult() {
    calculate();
    if (_bmi.round() < 18.5) {
      return "Under Weight";
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return "Normal";
    } else {
      return "Over Weight";
    }
  }

  String Description() {
    calculate();
    if (_bmi < 18.5) {
      return "You have a less than normal body weight. Try To eat little bit more";
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return "You have a normal body weight. Good Job!!!";
    } else {
      return "You have a higher than high body weight. Try to exercise";
    }
  }
}

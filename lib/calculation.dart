import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight,this.height});
  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if (_bmi >= 25){
      return 'Перебор';
    } else if (_bmi > 18.5) {
      return 'Нормально';
    }else {
      return 'Ниже нормы';
    }
  }
  String getInterpretation (){
    if (_bmi >= 25){
      return 'Ваш BMI выше, чем обычно. Постарайтесь больше тренироваться.';
    } else if (_bmi > 18.5) {
      return 'У вас отличные показатели.Так держать!';
    }else {
      return 'Ваша масса тела ниже нормы. Постарайтесь больше кушать, ведь кушать всегда приятно!';
    }
  }
}
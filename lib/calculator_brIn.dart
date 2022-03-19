import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  late double _bmi = 19;

  String calculateBMI(){
    _bmi = weight / pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 30.0){
      return 'Obesity';
    }else if(_bmi <= 29.9 && _bmi >= 25){
      return 'Overweight';
    }else if(_bmi>=18.5 && _bmi <= 24.9){
      return 'Healthy Weight';
    }else{
      return 'Underweight';
    }
  }

  String getInterpritation(){
    if(_bmi >= 30.0){
      return 'A BMI of over 30 indicates that a person has obesity. Their health may be at risk if they do not lose weight. They should talk with a doctor or dietitian for advice.';
    }else if(_bmi <= 29.9 && _bmi >= 25){
      return 'A BMI of 25–29.9 indicates that a person is slightly overweight. A doctor may advise them to lose some weight for health reasons. They should talk with a doctor or dietitian for advice.';
    }else if(_bmi>=18.5 && _bmi <= 24.9){
      return 'A BMI of 18.5–24.9 indicates that a person has a healthy weight for their height. By maintaining a healthy weight, they can lower their risk of developing serious health problems';
    }else{
      return 'A BMI of under 18.5 indicates that a person has insufficient weight, so they may need to put on some weight. They should ask a doctor or dietitian for advice.';
    }
  }

}
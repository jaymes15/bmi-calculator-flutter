import 'package:flutter/cupertino.dart';
import 'dart:math';

class BmiBrain{
  BmiBrain({@required this.weight,@required this.height});
  final int height;
  final int weight;
  double _bmi;

  String calculateBmi(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiResult(){
    if(_bmi >= 25){
      return "OverWeight";
    }else if(_bmi > 18.5){
      return "Normal";
    }else{
      return "UnderWeight";
    }
  }

  String getBmiResultInterpretation(){
    if(_bmi >= 25){
      return "You Have A Higher Than Normal Body Weight. Try To Exercise More.";
    }else if(_bmi > 18.5){
      return "You Have A Normal Body Weight. Good Job!";
    }else{
      return "You Have A Lower Than Normal Body Weight You Can Eat A Bit More";
    }
  }
}
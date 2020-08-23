import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor:Color(0xFF0A0E21),

      ),
      home:  Scaffold(
        appBar: AppBar(
        title: Text('BMI CALCULATOR'),
          ),
            body: InputPage(),
      ),
    );
  }
}
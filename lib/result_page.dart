import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'reusablecard.dart';
import 'constant.dart';
import 'bottom_button.dart';
import 'bmi_brain.dart';




class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmi,@required this.bmiInterpretation,@required this.bmiResultSummary});

  final String bmiResultSummary;
  final String bmiInterpretation;
  final String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appbar(),
    body: Column(
      children: <Widget>[
        Expanded(
          child: Text("Your Result",

          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w500,
          ),
          ),
        ),
        Expanded(
          flex:5,
          child: ReusableCard(
            cardcolor: kActivecardcolor,
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(bmiResultSummary,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30.0,
                  ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child:Text(bmi,
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.w900,
                  ),)
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child:Text(bmiInterpretation,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ))
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: BottomButton(
            texttitle: "RE-CALCULATE",
            navigateroute: (){
              Navigator.pop(context);
            },
          ),
        )
      ],
    ),
    );
  }
}

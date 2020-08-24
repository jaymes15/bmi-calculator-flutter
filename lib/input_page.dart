import 'package:flutter/material.dart';
import 'bmi_brain.dart';
import 'reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gendercard.dart';
import 'constant.dart';
import 'roundiconbutton.dart';
import 'result_page.dart';
import 'bottom_button.dart';



 enum Gender{
   male,
   female
 }



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height= 180;
  int weight = 50;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return  Column(

      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: (){
                  setState(() {
                  selectedGender = Gender.male;
                  });
                },
                  cardcolor: selectedGender == Gender.male ? kActivecardcolor: kDeactivatedcardcolor,
                  cardChild: gendercard(
                    gender: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardcolor: selectedGender == Gender.female ? kActivecardcolor : kDeactivatedcardcolor,
                  cardChild: gendercard(
                    gender: "FEMALE",
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(

              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardcolor: kActivecardcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("HEIGHT",
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(height.toString(),
                              style: kHeaderText,
                            ),
                            Text("cm",
                              style: TextStyle(
                                fontSize: 30.0,

                              ),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                            activeTrackColor: Colors.white,
                            thumbColor: Colors.pink,
                            overlayColor: Color(0x29EB1555)
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinSliderHeight,
                            max: kMaxSliderHeight,
                            onChanged: (double newValue){
                             setState(() {
                               height = newValue.round();
                             });

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
        ),
        Expanded(
          child: Row(

            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardcolor: kActivecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WEIGHT"),
                      Text(weight.toString(),
                      style: kHeaderText
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundButtonIcon(
                            iconchild:FontAwesomeIcons.minus,
                            onPressIcon: (){
                              setState(() {
                                weight = weight - 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundButtonIcon(
                              iconchild:FontAwesomeIcons.plus,
                            onPressIcon: (){
                                setState(() {
                                  weight = weight + 1;
                                });
                            },
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardcolor: kActivecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Age"),
                      Text(age.toString(),
                          style: kHeaderText
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundButtonIcon(
                            iconchild:FontAwesomeIcons.minus,
                            onPressIcon: (){
                              setState(() {
                                age = age - 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundButtonIcon(
                            iconchild:FontAwesomeIcons.plus,
                            onPressIcon: (){
                              setState(() {
                                age = age + 1;
                              });
                            },
                          ),

                        ],
                      ),

                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
          BottomButton(
            texttitle: "CALCULATE",
            navigateroute: (){
              BmiBrain bmiBrain = BmiBrain(
                height : height,
                weight: weight,
              );
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResultPage(
                  bmi: bmiBrain.calculateBmi(),
                  bmiInterpretation: bmiBrain.getBmiResultInterpretation(),
                  bmiResultSummary: bmiBrain.getBmiResult(),
                ),
              ));
            },
          ),
      ],
    );
  }
}






// overriding the theme of a paticular widget on a page
//      floatingActionButton: Theme(
//        data: ThemeData(
//          accentColor: Colors.orange,
//        ),
//        child: FloatingActionButton(
//          child: Icon(Icons.add),
//        ),
//      ),
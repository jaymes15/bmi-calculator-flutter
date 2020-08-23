import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gendercard.dart';


const bottombuttonheight =80.0;
const activecardcolor = Color(0xFF1D1E33);
const deactivatedcardcolor = Colors.blueGrey;

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
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                     selectedGender = Gender.male;
                    });


                  },
                  child: ReusableCard(
                    cardcolor: selectedGender == Gender.male ? activecardcolor: deactivatedcardcolor,
                    cardChild: gendercard(
                      gender: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });


                  },
                  child: ReusableCard(
                    cardcolor: selectedGender == Gender.female ? activecardcolor : deactivatedcardcolor,
                    cardChild: gendercard(
                      gender: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
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
                    cardcolor: activecardcolor,
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
                  cardcolor: activecardcolor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardcolor: activecardcolor,

                ),
              ),
            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top:10.0),
          height: bottombuttonheight,
          width: double.infinity,
            color:Colors.pink,

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
import 'package:flutter/material.dart';
import 'reusablecard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  cardcolor: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardcolor: Color(0xFF1D1E33),
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
                    cardcolor: Color(0xFF1D1E33),
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
                  cardcolor: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardcolor: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
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
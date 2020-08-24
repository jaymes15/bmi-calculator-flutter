import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.texttitle, @required this.navigateroute});
  final String texttitle;
  final Function navigateroute;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateroute,
      child: Container(
        margin: EdgeInsets.only(top:10.0),
        padding: EdgeInsets.all(10.0),
        height: kBottombuttonheight,
        width: double.infinity,
        color:Colors.pink,
        child: Text(texttitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),

      ),
    );
  }
}


import 'package:flutter/material.dart';


const gendertextstyle = TextStyle(
  color: Colors.grey,
  fontSize: 20.0,
);

class gendercard extends StatelessWidget {
  gendercard({@required this.gender, @required this.icon});

  final String gender;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size:100.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(gender,
          style:  gendertextstyle,
        ),
      ],
    );
  }
}


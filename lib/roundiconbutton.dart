import 'package:flutter/material.dart';


class RoundButtonIcon extends StatelessWidget {
  RoundButtonIcon({@required this.iconchild, @required this.onPressIcon});
  final IconData iconchild;
  final Function onPressIcon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressIcon,
      child: Icon(iconchild),
      shape: CircleBorder(),
      fillColor: Colors.grey,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';
class GenderCard extends StatelessWidget {

  GenderCard({@required this.icon, @required this.iconSize,@required this.text,this.iconColor,this.textColor,this.textSize,this.textFont});
  final icon;
  final iconSize;
  final text;
  final iconColor;
  final textColor;
  final textSize;
  final textFont;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
            icon,
            size:iconSize,
            color: iconColor,
        ),
        SizedBox(
          height: 25,
        ),
        Text(text, style: TextStyle(
            fontSize: textSize,
            color: textColor,
            fontFamily: textFont
        ),)
      ],
    );
  }
}
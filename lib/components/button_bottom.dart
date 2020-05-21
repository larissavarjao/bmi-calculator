import 'package:flutter/material.dart';

import '../constants.dart';

class ButtonBottom extends StatelessWidget {
  final Function onTap;
  final String title;

  ButtonBottom({@required this.onTap, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            title,
            style: kButtonStyle,
          ),
        ),
        color: kBottomContainerBackgroundColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeigth,
      ),
    );
  }
}

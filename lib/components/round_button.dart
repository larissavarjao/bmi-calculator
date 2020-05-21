import 'package:flutter/material.dart';

import '../constants.dart';

class RoundButton extends StatelessWidget {
  final IconData child;
  final Function onPressed;

  RoundButton({@required this.child, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: Icon(child),
        shape: CircleBorder(),
        fillColor: kFABBottomColor,
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
      ),
    );
  }
}

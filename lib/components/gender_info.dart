import 'package:flutter/material.dart';

import '../constants.dart';

class GenderInfo extends StatelessWidget {
  final String gender;
  final IconData icon;

  GenderInfo({@required this.gender, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: kLabelStyle,
        ),
      ],
    );
  }
}

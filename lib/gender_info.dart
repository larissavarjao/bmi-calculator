import 'package:flutter/material.dart';

const TextStyle labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelStyle,
        ),
      ],
    );
  }
}

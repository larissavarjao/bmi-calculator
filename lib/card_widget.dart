import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTapGesture;

  CardWidget({@required this.color, this.cardChild, this.onTapGesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapGesture,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

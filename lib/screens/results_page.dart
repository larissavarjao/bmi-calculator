import 'package:flutter/material.dart';

import '../components/card_widget.dart';
import '../components/button_bottom.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String interpretation;
  final String bmiResult;

  ResultsPage({this.result, this.bmiResult, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your result',
                  style: kTitleStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: CardWidget(
                color: kBodyBackgroundColor,
                cardChild: Column(
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBMITextResult,
                      textAlign: TextAlign.center,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
            ButtonBottom(
              title: 'RETURN',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_widget.dart';
import 'constants.dart';
import 'gender_info.dart';

enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heigth = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardWidget(
                    color: selectedGender == Gender.male
                        ? kBodyBackgroundColor
                        : kInactiveCardColor,
                    cardChild: GenderInfo(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                    onTapGesture: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    color: selectedGender == Gender.female
                        ? kBodyBackgroundColor
                        : kInactiveCardColor,
                    cardChild: GenderInfo(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                    onTapGesture: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CardWidget(
              color: kBodyBackgroundColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        heigth.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: kBottomContainerBackgroundColor,
                      overlayColor: kOverlaySliderColor,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      inactiveTrackColor: kLightPinkColor,
                    ),
                    child: Slider(
                      value: heigth.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (value) {
                        setState(() {
                          heigth = value.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardWidget(color: kBodyBackgroundColor),
                ),
                Expanded(
                  child: CardWidget(color: kBodyBackgroundColor),
                )
              ],
            ),
          ),
          Container(
            color: kBottomContainerBackgroundColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeigth,
          ),
        ],
      ),
    );
  }
}

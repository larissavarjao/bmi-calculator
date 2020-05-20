import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_widget.dart';
import 'gender_info.dart';

// const são usadas para variaveis imutaveis que são calculadas uma vez só na compilação (não é calculada em runtime).
// Ou seja, se vc criar um container e o container for jogado fora e criado um novo, o const não serve, tem que ser final, pois ele é calculado em runtime
// toda vez que é executado
const double bottomContainerHeigth = 80.0;
const Color bodyBackgroundColor = Color(0xFF1D133);
const Color bottomContainerBackgroundColor = Color(0xFFEB1555);
const Color inactiveCardColor = Color(0xFF111328);
enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardWidget(
                    color: selectedGender == Gender.male
                        ? bodyBackgroundColor
                        : inactiveCardColor,
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
                        ? bodyBackgroundColor
                        : inactiveCardColor,
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
            child: CardWidget(color: bodyBackgroundColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardWidget(color: bodyBackgroundColor),
                ),
                Expanded(
                  child: CardWidget(color: bodyBackgroundColor),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerBackgroundColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

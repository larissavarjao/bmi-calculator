import 'package:flutter/material.dart';

// const são usadas para variaveis imutaveis que são calculadas uma vez só na compilação (não é calculada em runtime).
// Ou seja, se vc criar um container e o container for jogado fora e criado um novo, o const não serve, tem que ser final, pois ele é calculado em runtime
// toda vez que é executado
const double kBottomContainerHeigth = 80.0;
const Color kBodyBackgroundColor = Color(0xFF1D133);
const Color kBottomContainerBackgroundColor = Color(0xFFEB1555);
const Color kInactiveCardColor = Color(0xFF111328);
const Color kLightPinkColor = Color(0xFF8D8E98);
const Color kOverlaySliderColor = Color(0x29EB1555);
const Color kFABBottomColor = Color(0xFF4C4F5E);

const TextStyle kLabelStyle = TextStyle(
  fontSize: 18.0,
  color: kLightPinkColor,
);

const TextStyle kNumberStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const TextStyle kButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kTitleStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kBMITextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);

const TextStyle kBMITextResult = TextStyle(
  fontSize: 22.0,
);

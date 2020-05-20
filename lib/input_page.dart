import 'package:flutter/material.dart';

// const são usadas para variaveis imutaveis que são calculadas uma vez só na compilação (não é calculada em runtime).
// Ou seja, se vc criar um container e o container for jogado fora e criado um novo, o const não serve, tem que ser final, pois ele é calculado em runtime
// toda vez que é executado
const double bottomContainerHeigth = 80.0;
const Color bodyBackgroundColor = Color(0xFF1D133);
const Color bottomContainerBackgroundColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: CardWidget(color: bodyBackgroundColor),
                ),
                Expanded(
                  child: CardWidget(color: bodyBackgroundColor),
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

class CardWidget extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  CardWidget({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color cardColor = Color(0xFF272A4E);
  Color bottomBarColor = Color(0xFFFF0067);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InputCardWidget(
                    colour: cardColor,
                    cardchild: IconDataWidget(
                      fontAwesmeIco: FontAwesomeIcons.mars,
                      labelText: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: InputCardWidget(
                    cardchild: IconDataWidget(
                      fontAwesmeIco: FontAwesomeIcons.venus,
                      labelText: 'FEMALE',
                    ),
                    colour: cardColor,
                  ))
                ],
              ),
            ),
            Expanded(
                child: InputCardWidget(
              colour: cardColor,
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InputCardWidget(
                    colour: cardColor,
                  )),
                  Expanded(
                      child: InputCardWidget(
                    colour: cardColor,
                  ))
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE YOUR BMI'),
              ),
              color: bottomBarColor,
            )
          ],
        ));
  }
}

class IconDataWidget extends StatelessWidget {
  final IconData fontAwesmeIco;
  final String labelText;

  IconDataWidget({this.fontAwesmeIco, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesmeIco,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(labelText)
      ],
    );
  }
}

class InputCardWidget extends StatelessWidget {
  final Color colour;
  final Widget cardchild;
  InputCardWidget({this.colour, this.cardchild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}

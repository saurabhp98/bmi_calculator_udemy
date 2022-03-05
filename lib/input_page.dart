import 'bottom_button.dart';
import 'result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_data.dart';
import 'input_card.dart';
import 'bmi_calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color cardColor = Color(0xFF272A4E);
Color bottomBarColor = Color(0xFFFF0067);
Color activeCardColor = Colors.teal;
Color inActiveCardColor = Color(0xFF272A4E);

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int sliderValue = 145;
  int weightVal = 30;
  int ageVal = 18;

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
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inActiveCardColor,
                    cardchild: IconDataWidget(
                      fontAwesmeIco: FontAwesomeIcons.mars,
                      labelText: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: InputCardWidget(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardchild: IconDataWidget(
                      fontAwesmeIco: FontAwesomeIcons.venus,
                      labelText: 'FEMALE',
                    ),
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inActiveCardColor,
                  ))
                ],
              ),
            ),
            Expanded(
                child: InputCardWidget(
              colour: cardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT'),
                  Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          sliderValue.toString(),
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'cm',
                        )
                      ]),
                  Slider(
                      activeColor: Colors.grey.shade100,
                      inactiveColor: Colors.grey.shade500,
                      thumbColor: bottomBarColor,
                      min: 120,
                      max: 220,
                      value: sliderValue.toDouble(),
                      onChanged: (newSliderValue) {
                        print(newSliderValue.round());
                        setState(() {
                          sliderValue = newSliderValue.toInt();
                        });
                      }),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InputCardWidget(
                    colour: cardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT'),
                        Text(
                          weightVal.toString(),
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weightVal--;
                                });
                              },
                              fillColor: Colors.grey,
                              elevation: 6.0,
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 56, minWidth: 56),
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weightVal++;
                                });
                              },
                              elevation: 6.0,
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 56, minWidth: 56),
                              child: Icon(FontAwesomeIcons.plus),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: InputCardWidget(
                    colour: cardColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE'),
                        Text(
                          ageVal.toString(),
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  ageVal--;
                                });
                              },
                              fillColor: Colors.grey,
                              elevation: 6.0,
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 56, minWidth: 56),
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  ageVal++;
                                });
                              },
                              elevation: 6.0,
                              fillColor: Colors.grey,
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 56, minWidth: 56),
                              child: Icon(FontAwesomeIcons.plus),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            BottomButton(
              buttonText: 'Calculate'.toUpperCase(),
              onTap: () {
                BmiBrain calc =
                    BmiBrain(height: sliderValue, weight: weightVal);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              resultVal: calc.bmiCalc(),
                              resultText: calc.bmiResult(),
                              resultInterpretation: calc.bmiInterpretation(),
                            )));
              },
            )
          ],
        ));
  }
}

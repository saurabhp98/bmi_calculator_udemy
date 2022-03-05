import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/input_card.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    this.resultText,
    this.resultVal,
    this.resultInterpretation,
  });
  String resultText;
  String resultVal;
  String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Text(
            'Your Results',
            style: TextStyle(
              fontSize: 50,
            ),
          )),
          Expanded(
              flex: 5,
              child: InputCardWidget(
                colour: cardColor,
                cardchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                            fontSize: 25,
                            color: resultText == 'NORMAL'
                                ? Colors.green
                                : Colors.red),
                      ),
                    ),
                    Center(
                      child: Text(
                        resultVal,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        resultInterpretation,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )),
          BottomButton(
            buttonText: 'Re-Calculate'.toUpperCase(),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

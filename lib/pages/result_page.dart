import 'package:bmi_calculator_yad/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_yad/constants.dart';
import 'package:bmi_calculator_yad/widgets/reusable_card.dart';

class Results extends StatelessWidget {
  const Results(
      {super.key,
      required this.resultText,
      required this.bmiResult,
      required this.interpretation});

  final String resultText;
  final String bmiResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appBarTitle),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              color: activeKartRenk,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultString,
                    style: resultStringSyle,
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    resultText,
                    style: TextStyle(
                      color: switch (resultText) {
                        'Overweight' => Colors.red,
                        'Normal' => Colors.green,
                        'Underweight' => Colors.yellow,
                        _ => Colors.black,
                      },
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomButton(
            text: buttonText2,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

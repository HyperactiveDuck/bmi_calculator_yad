import 'package:bmi_calculator_yad/constants.dart';
// ignore: unused_import
import 'package:bmi_calculator_yad/pages/result_page.dart';
import 'package:bmi_calculator_yad/widgets/bottom_button.dart';
import 'package:bmi_calculator_yad/widgets/calculator_brain.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';
import 'sex_icons.dart';

enum Gender {
  male,
  female,
}

int height = 180;
int weight = 60;
int age = 20;

class MainColumnInputPage extends StatefulWidget {
  const MainColumnInputPage({
    super.key,
  });

  @override
  State<MainColumnInputPage> createState() => _MainColumnInputPageState();
}

class _MainColumnInputPageState extends State<MainColumnInputPage> {
  bool isMale = false;

  Color maleCardColor = inactiveKartRenk;

  Color femaleCardColor = inactiveKartRenk;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveKartRenk) {
        maleCardColor = activeKartRenk;
        femaleCardColor = inactiveKartRenk;
        isMale = true;
      } else if (maleCardColor == activeKartRenk) {
        maleCardColor = activeKartRenk;
      } else {
        maleCardColor = inactiveKartRenk;
      }
    } else if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveKartRenk) {
        femaleCardColor = activeKartRenk;
        maleCardColor = inactiveKartRenk;
        isMale = false;
      } else if (femaleCardColor == activeKartRenk) {
        femaleCardColor = activeKartRenk;
      } else {
        femaleCardColor = inactiveKartRenk;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                      debugPrint(isMale.toString());
                    });
                  },
                  //malecard
                  child: ReusableCard(
                    color: maleCardColor,
                    cardChild: const SexWidget(
                      sexIcon: maleIcon,
                      sexText: maleText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                      debugPrint(isMale.toString());
                    });
                  },
                  //female card
                  child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: const SexWidget(
                      sexIcon: femaleIcon,
                      sexText: femaleText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ReusableCard(
          color: activeKartRenk,
          cardChild: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  heightLabel,
                  style: labelTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toString(),
                    style: heightTextStyle,
                  ),
                  const Text(
                    heightFormat,
                    style: labelTextStyle,
                  ),
                ],
              ),
              Slider(
                  value: height.toDouble(),
                  min: slidermin,
                  max: slidermax,
                  activeColor: bottomBarRenk,
                  inactiveColor: inactiveBarRenk,
                  onChanged: (double newValue) {
                    setState(() => height = newValue.round());
                  }),
            ],
          ),
        )),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ReusableCard(
                color: activeKartRenk,
                cardChild: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        weightLabel,
                        style: labelTextStyle,
                      ),
                    ),
                    Text(
                      weight.toString(),
                      style: heightTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: 'weight1',
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          backgroundColor: bottomBarRenk,
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          heroTag: 'weight2',
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                          backgroundColor: bottomBarRenk,
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                color: activeKartRenk,
                cardChild: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        ageLabel,
                        style: labelTextStyle,
                      ),
                    ),
                    Text(
                      age.toString(),
                      style: heightTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          heroTag: 'age1',
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          backgroundColor: bottomBarRenk,
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FloatingActionButton(
                          heroTag: 'age2',
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          backgroundColor: bottomBarRenk,
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
        bottomButton(
            text: buttonText1,
            onPressed: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Results(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResults(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            }),
      ],
    );
  }
}

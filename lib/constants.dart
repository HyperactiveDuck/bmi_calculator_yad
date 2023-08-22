import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 25.0,
  color: Color.fromARGB(255, 255, 255, 255),
);
const resultStringSyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const buttonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
const bottomBarHeight = 60.0;
const Color bottomBarRenk = Color.fromRGBO(0, 202, 179, 1);
const Color inactiveBarRenk = Color.fromRGBO(52, 58, 57, 1);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const maleText = "Male";
const femaleText = "Female";
const Color inactiveKartRenk = Color.fromARGB(255, 68, 68, 68);
const Color activeKartRenk = Color.fromARGB(255, 27, 27, 27);
const heightTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

double slidermax = 220.0;
double slidermin = 120.0;
const heightLabel = 'HEIGHT';
const weightLabel = 'WEIGHT';
const ageLabel = 'AGE';
const heightFormat = 'cm';
String resultString = 'Your Result';
String appBarTitle = 'BMI CALCULATOR';
String buttonText1 = 'Calculate';
String buttonText2 = 'Re-Calculate';

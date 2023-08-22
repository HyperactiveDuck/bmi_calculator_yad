import 'package:flutter/material.dart';
import 'package:bmi_calculator_yad/constants.dart';

bottomButton({required String text, required Function onPressed}) {
  return GestureDetector(
    onTap: () {
      onPressed();
    },
    child: Container(
      color: bottomBarRenk,
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
    ),
  );
}

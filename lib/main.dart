// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'pages/input_dart.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: const ColorScheme.highContrastDark()),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}

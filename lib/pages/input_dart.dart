// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import '../widgets/main_column_input_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: const MainColumnInputPage(),
    );
  }
}

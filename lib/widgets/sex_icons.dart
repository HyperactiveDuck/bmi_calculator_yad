import 'package:flutter/material.dart';

const iconSize = 80.0;
const textStyle = TextStyle(fontSize: 25, color: Colors.white);

class SexWidget extends StatefulWidget {
  const SexWidget({super.key, required this.sexIcon, required this.sexText});

  final IconData sexIcon;
  final String sexText;

  @override
  State<SexWidget> createState() => _SexWidgetState();
}

class _SexWidgetState extends State<SexWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.sexIcon, size: iconSize),
        const SizedBox(height: 15),
        Text(
          widget.sexText,
          style: textStyle,
        ),
      ],
    );
  }
}

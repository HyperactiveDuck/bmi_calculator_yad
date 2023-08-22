import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  const ReusableCard({super.key, required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.color,
      ),
      margin: const EdgeInsets.all(15),
      child: widget.cardChild,
    );
  }
}

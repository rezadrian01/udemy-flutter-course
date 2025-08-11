import 'package:flutter/material.dart';
import 'package:section_2/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  final Alignment startAlignment = Alignment.topLeft;
  final Alignment endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade900],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: DiceRoller(),
    );
  }
}

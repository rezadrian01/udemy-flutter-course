import 'dart:math';

import 'package:flutter/material.dart';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var counter = 1;

  void incrementCounter() {
    setState(() {
      counter = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Text('$counter'),
        Image.asset('assets/images/dice-$counter.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: incrementCounter,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Click Me!'),
        ),
      ],
    );
  }
}

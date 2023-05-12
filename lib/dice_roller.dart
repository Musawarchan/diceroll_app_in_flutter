import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceROllerState();
  }
}

class _DiceROllerState extends State<DiceRoller> {
  var currentDiceROll = 2;

  void rollDice() {
    setState(() {
      currentDiceROll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('DICE ROLLER APP'),
        Image.asset(
          'assets/images/dice-$currentDiceROll.png',
          width: 180,
          height: 140,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: rollDice,
          child: const Text(
            'Rollup dice',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ],
    );
  }
}

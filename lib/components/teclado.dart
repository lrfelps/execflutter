import 'package:flutter/material.dart';
import 'package:exec/components/botoes.dart';

class Keypad extends StatelessWidget {
  final void Function(String) onButtonPressed;

  const Keypad({
    super.key,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CalculatorButton(text: "AC", color: Colors.red, onPressed: onButtonPressed),
            CalculatorButton(text: "÷", color: Colors.orange, onPressed: onButtonPressed),
            CalculatorButton(text: "x", color: Colors.orange, onPressed: onButtonPressed),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(text: "7", onPressed: onButtonPressed),
            CalculatorButton(text: "8", onPressed: onButtonPressed),
            CalculatorButton(text: "9", onPressed: onButtonPressed),
            CalculatorButton(text: "-", color: Colors.orange, onPressed: onButtonPressed),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(text: "4", onPressed: onButtonPressed),
            CalculatorButton(text: "5", onPressed: onButtonPressed),
            CalculatorButton(text: "6", onPressed: onButtonPressed),
            CalculatorButton(text: "+", color: Colors.orange, onPressed: onButtonPressed),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(text: "1", onPressed: onButtonPressed),
            CalculatorButton(text: "2", onPressed: onButtonPressed),
            CalculatorButton(text: "3", onPressed: onButtonPressed),
            CalculatorButton(text: "=", onPressed: onButtonPressed),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: CalculatorButton(text: "0", onPressed: onButtonPressed),
            ),
            CalculatorButton(text: ".", onPressed: onButtonPressed),
          ],
        ),
      ],
    );
  }
}
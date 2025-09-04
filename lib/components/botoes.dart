import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function(String) onPressed;

  const CalculatorButton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () => onPressed(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(20.0),
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
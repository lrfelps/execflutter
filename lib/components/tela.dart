import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  final String history;

  const Display({
    super.key,
    required this.value,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              history,
              style: const TextStyle(
                fontSize: 24.0,
                color: Colors.grey,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
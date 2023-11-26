import 'package:flutter/material.dart';

class NumberOfLettersEntered extends StatelessWidget {
  const NumberOfLettersEntered(
    this.data, {
    super.key,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Number of letters entered: $data',
      style: const TextStyle(
        fontSize: 16.0,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LettersButtonItem extends StatelessWidget {
  const LettersButtonItem({
    super.key,
    required this.letter,
    required this.onPressed,
  });

  final String letter;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue, // Makes the button circular
        padding: const EdgeInsets.all(10), // Button color
      ),
      child: Text(
        letter,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}

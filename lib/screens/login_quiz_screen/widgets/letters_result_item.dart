import 'package:flutter/material.dart';

class LetterResultItem extends StatelessWidget {
  const LetterResultItem({
    super.key,
    required this.onTap,
    required this.letterController,
  });
  final void Function()? onTap;
  final TextEditingController letterController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          controller: letterController,
          textAlign: TextAlign.center,
          enabled: false,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

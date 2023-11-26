import 'package:flutter/material.dart';

import 'letters_button_item.dart';

class RowLettersButton extends StatelessWidget {
  const RowLettersButton({
    super.key,
    required this.letters,
    required this.onPressed,
  });
  final String letters;
  final void Function(String letter) onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: letters.length,
        itemBuilder: (context, index) => LettersButtonItem(
          letter: letters[index],
          onPressed: () {
            onPressed(letters[index]);
          },
        ),
      ),
    );
  }
}

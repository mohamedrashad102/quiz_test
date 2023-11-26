import 'package:flutter/material.dart';
import 'package:quiz_test/screens/login_quiz_screen/widgets/letters_result_item.dart';

class LettersResult extends StatelessWidget {
  const LettersResult({
    super.key,
    required this.onTap,
    required this.answerControllers,
  });

  final List<TextEditingController> answerControllers;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 1.0,
      children: answerControllers
          .map((letterController) => LetterResultItem(
                letterController: letterController,
                onTap: onTap,
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_test/screens/login_quiz_screen/widgets/row_letters_button.dart';

class LettersButtonListView extends StatelessWidget {
  const LettersButtonListView({
    super.key,
    required this.letters,
    required this.onPressed,
  });
  final List<String> letters;
  final void Function(String letter) onPressed;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: letters.length,
      itemBuilder: (context, index) => RowLettersButton(
        letters: letters[index],
        onPressed: onPressed,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}

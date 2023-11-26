import 'package:flutter/material.dart';
import 'package:quiz_test/screens/login_quiz_screen/widgets/number_of_letters_entered.dart';
import 'package:quiz_test/screens/login_quiz_screen/widgets/photo.dart';

import 'widgets/letters_button_list_view.dart';
import 'widgets/letters_result.dart';

class LogoQuizScreen extends StatefulWidget {
  const LogoQuizScreen({
    super.key,
    required this.brand,
  });

  final String brand;

  @override
  LogoQuizScreenState createState() => LogoQuizScreenState();
}

class LogoQuizScreenState extends State<LogoQuizScreen> {
  int currentQuestionIndex = 0;
  late List<TextEditingController> answerControllers;

  @override
  void initState() {
    answerControllers =
        List.generate(widget.brand.length, (_) => TextEditingController());
    super.initState();
  }

  @override
  void dispose() {
    for (int i = 0; i < answerControllers.length; i++) {
      answerControllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const List<String> letters = [
      'abcdefgh',
      'ijklmnop',
      'qrstuvwxyz',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Photo(path: _getPhotoPath()),
            const SizedBox(height: 20.0),
            LettersResult(
              answerControllers: answerControllers,
              onTap: _onResultLetterTap,
            ),
            const SizedBox(height: 20.0),
            LettersButtonListView(
              letters: letters,
              onPressed: (letter) => _onLetterPressed(letter),
            ),
            const SizedBox(height: 20.0),
            NumberOfLettersEntered(_calcNumberOfLettersEntered()),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  String _getPhotoPath() => 'assets/${widget.brand}.jpeg';

  String _calcNumberOfLettersEntered() {
    int totalLetters = widget.brand.length;
    int numberOfLettersEntered = currentQuestionIndex;
    return '$numberOfLettersEntered / $totalLetters';
  }

  void _onLetterPressed(String letter) {
    if (currentQuestionIndex >= answerControllers.length) return;
    answerControllers[currentQuestionIndex].text = letter;
    setState(() {
      currentQuestionIndex++;
    });
  }

  void _onResultLetterTap() {
    if (currentQuestionIndex <= 0) return;
    setState(() {
      currentQuestionIndex--;
    });
    answerControllers[currentQuestionIndex].clear();
  }
}

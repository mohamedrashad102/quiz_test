import 'package:flutter/material.dart';
import 'package:quiz_test/screens/login_quiz_screen/login_quiz_screen.dart';

void main() {
  runApp(const LogoQuizApp());
}

class LogoQuizApp extends StatelessWidget {
  const LogoQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logo Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogoQuizScreen(brand: 'cat'),
    );
  }
}

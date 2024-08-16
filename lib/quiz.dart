import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen ;

  @override
  void initState() {
    currentScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    print("in switch");
    setState(() {
      currentScreen = const QuestionPage();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 215, 44, 245),
                Color.fromARGB(255, 108, 9, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}



class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? currentScreen ; 

  @override
  void initState() {
    currentScreen = HomePage(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    print(selectedAnswers);

    if(selectedAnswers.length==questions.length) {
      setState(() {
        currentScreen = ResultScreen(choosenAnswers: selectedAnswers,onRestart: restartQuiz,);
      }); 
    }
  }

  void restartQuiz(){
    setState((){
      selectedAnswers=[];
      currentScreen=HomePage(switchScreen);
    });
  }

  void switchScreen() {
    print("in switch");
    setState(() {
      currentScreen = QuestionPage(onSelectAnswer: chooseAnswer);
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

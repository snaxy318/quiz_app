import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          currentQuestion.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        AnswerButton(
          answerText: currentQuestion.answers[0],
          onTap: () {},
        ),
        AnswerButton(
          answerText: currentQuestion.answers[1],
          onTap: () {},
        ),
        AnswerButton(
          answerText: currentQuestion.answers[2],
          onTap: () {},
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return const SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Question",style: TextStyle(
          color: Colors.white,
        ),),
        const SizedBox(
          width: 30,
        ),
        AnswerButton('answer1'),
        AnswerButton('ans2'),
        AnswerButton('ans3'),
      ]),
    );
  }
}

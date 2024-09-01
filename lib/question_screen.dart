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
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Question",style: TextStyle(
          color: Colors.white,
        ),),
        const SizedBox(
          width: 30,
        ),
        AnswerButton(answerText:'Answer 1',onTap: () {},),
        AnswerButton(answerText:'Answer 2',onTap: () {},),
        AnswerButton(answerText:'Answer 3',onTap: () {},),
      ]),
    );
  }
}

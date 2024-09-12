import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalNoOfQuestions = questions.length;
    final correctNoOfQuestion = summaryData.where((data) {
      return (data['user_answer'] == data['correct_answer']);
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $correctNoOfQuestion out of $totalNoOfQuestions questions correctly !',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white,fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 249, 163, 3),
              ),
              child: const Text('Restart Quiz!',style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

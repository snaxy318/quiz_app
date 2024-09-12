import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  bool isCorrectAnswer(String s1, String s2) {
    if (s1 == s2) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            bool isCorrect = isCorrectAnswer(data['user_answer'] as String,
                data['correct_answer'] as String);
            return Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isCorrect
                        ? Color.fromARGB(255, 50, 192, 235)
                        : Color.fromARGB(255, 114, 10, 194),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (data['question']).toString(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text((data['user_answer']).toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: isCorrect
                                  ? const Color.fromARGB(255, 50, 192, 235)
                                  : const Color.fromARGB(255, 114, 10, 194),
                            )),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text((data['correct_answer']).toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: isCorrect
                                  ? const Color.fromARGB(255, 50, 192, 235)
                                  : const Color.fromARGB(255, 114, 10, 194),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}

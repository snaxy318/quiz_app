import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget{
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question"),
          const SizedBox(
            width: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1'),),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 2'),),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 3'),),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 4'),),
          
        ]
      
      ),
    );
  }
}
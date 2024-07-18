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
    return const Text('Question Screen');
  }
}
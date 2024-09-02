class QuizQuestion{
  const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffelAnswers() {
    final shuffeledAnswer = List.of(answers);
    shuffeledAnswer.shuffle();
    return shuffeledAnswer;
  }
}
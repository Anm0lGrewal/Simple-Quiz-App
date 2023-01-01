import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionAnswer;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionAnswer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionAnswer]['questionText'],
        ),
        ...(questions[questionAnswer]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

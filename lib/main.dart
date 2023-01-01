// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    // we are using map here
    {
      'questionText': 'What is your favorate color?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 8}
      ]
    },
    {
      'questionText': 'Which is your favorate movie?',
      'answer': [
        {'text': '3 Idiots', 'score': 10},
        {'text': 'Scam 1992', 'score': 10},
        {'text': 'Border', 'score': 9},
        {'text': 'Hostel Dayz', 'score': 8}
      ]
    },
    {
      'questionText': 'Which is your favorte State?',
      'answer': [
        {'text': 'Haryana', 'score': 10},
        {'text': 'Punjab', 'score': 5},
        {'text': 'Rajashtan', 'score': 4},
        {'text': 'UP', 'score': 3}
      ]
    },
  ];

  var _questionAnswer = 0;
  var _totalScore = 0;

  void _resestQuiz() {
    setState(() {
      _questionAnswer = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionAnswer += 1;
    });
    print(_questionAnswer);
    if (_questionAnswer < _questions.length) {
      print('we have more questions');
    } else {
      print('you did it');
    }
  }

  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionAnswer < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionAnswer: _questionAnswer,
                questions: _questions,
              )
            : Result(_totalScore,_resestQuiz),
      ),
    );
  }
}

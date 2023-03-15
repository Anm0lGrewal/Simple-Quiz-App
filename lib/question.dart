import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //now it is using container as a refrence
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25, fontFamily: 'RobotoMono'),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 27) {
      resultText = 'You are Great';
    } else if (resultScore > 15) {
      resultText = 'You did it well';
    } else {
      resultText = 'You are not Good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}

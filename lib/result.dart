import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});
  final int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    if (totalScore < 8) {
      resultText = 'You are awsome';
      return resultText;
    } else if (totalScore < 12) {
      resultText = 'You are Good';
    } else if (totalScore < 16) {
      resultText = 'You are strange';
      return resultText;
    } else
      resultText = 'You are bad!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(onPressed: resetQuiz, child: Text('Reset Quiz'))
      ],
    );
  }
}

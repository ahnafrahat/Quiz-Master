import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartQuiz;

  Result(this.score, this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You Fucked It! with a score of $score !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              restartQuiz();
            },
          )
        ],
      ),
    );
  }
}

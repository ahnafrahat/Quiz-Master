import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answeers': [
        {'text': 'Black', 'score': 4},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 8},
        {'text': 'white', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answeers': [
        {'text': 'Lion', 'score': 4},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Panda', 'score': 8},
        {'text': 'Cat', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favourite car brand?',
      'answeers': [
        {'text': 'Mercedeze', 'score': 4},
        {'text': 'Audi', 'score': 6},
        {'text': 'Toyota', 'score': 8},
        {'text': 'Honda', 'score': 9}
      ]
    }
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    print('Answer Question Pressed!');
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < questions.length) {
      print("More question");
    } else {
      print("Else ");
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Master"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex)
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}

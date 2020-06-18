import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Orange', 'score': 9},
        {'text': 'Yellow', 'score': 7},
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 3},
        {'text': 'Purple', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 3},
        {'text': 'Bird', 'score': 4},
        {'text': 'Turtle', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'Los Angeles', 'score': 4},
        {'text': 'Denver', 'score': 1},
        {'text': 'Austin', 'score': 2},
        {'text': 'Portland', 'score': 3}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}

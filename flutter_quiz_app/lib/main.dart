import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Orange', 'Yellow', 'Green', 'Blue', 'Purple']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Bird', 'Turtle']
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': ['Los Angeles', 'Denver', 'Austin', 'Portland']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You answered all the questions'),
              ),
      ),
    );
  }
}

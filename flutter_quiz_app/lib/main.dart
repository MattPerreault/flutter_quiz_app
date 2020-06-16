import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s the answer to the universe?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Quiz App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1: '),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2: '),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3: '),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

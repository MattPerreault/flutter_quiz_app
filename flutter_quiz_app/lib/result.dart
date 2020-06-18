import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  String get resultPhrase {
    var resultText;
    if (totalScore <= 8) {
      resultText = 'You are awesome!';
    } else if (totalScore <= 12){
      resultText = 'Ehh, I would have chosen some different answers.';
    } else if( totalScore <= 16){
      resultText = 'You need help.';
    }
      
    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text (
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

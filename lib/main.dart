import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Pig', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite toy?',
      'answer': [
        {'text': 'Toy Car', 'score': 10},
        {'text': 'Cash', 'score': 5},
        {'text': 'Mum', 'score': 3},
        {'text': 'PS6', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  final _appTitle = "Questions";

  void _answerText(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appTitle),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerText: _answerText,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

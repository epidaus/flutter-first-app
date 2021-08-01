import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List _questions = [
    {
      'questionText': 'What\'s your favorite Movie?',
      'answers': [
        {
          'text': 'Harry Potter',
          'score': 5,
        },
        {
          'text': 'Pirate of Caribbean',
          'score': 9,
        },
        {
          'text': 'Pimak',
          'score': 10,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite Series?',
      'answers': [
        {
          'text': 'Modern Family',
          'score': 7,
        },
        {
          'text': 'Friends',
          'score': 9,
        },
        {
          'text': 'Peaky Blinders',
          'score': 5,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite Song?',
      'answers': [
        {
          'text': 'Anyone',
          'score': 8,
        },
        {
          'text': 'Reckless',
          'score': 6,
        },
        {
          'text': 'Yummy',
          'score': 7,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetPage() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetPage),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Qui est la plus belle femme ?',
      'answers': [
        {'text': 'Miss Universe', 'score': 10},
        {'text': 'Lara Croft', 'score': 5},
        {'text': 'Bby Gweny', 'score': 3},
        {'text': 'Une rose', 'score': 1}
        ],
    },
    {
      'questionText': 'Qui est le meilleur rappeur',
      'answers': [
        {'text': 'Kaaris', 'score': 10},
        {'text': 'Josman', 'score': 5},
        {'text': 'Kekra', 'score': 3},
        {'text': 'Scylla', 'score': 1}
      ],
    },
    {
      'questionText': 'Comment te sens-tu ?',
      'answers': [
        {'text': 'Bien', 'score': 10},
        {'text': 'Pas bien', 'score': 5},
        {'text': 'Très bien', 'score': 3},
        {'text': 'Nickel bleu ciel', 'score': 1}
      ]
    }
  ]; // Map

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
      )
          : Result(_totalScore),
    ),
    );
  }
}

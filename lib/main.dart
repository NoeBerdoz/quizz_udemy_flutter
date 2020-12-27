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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Blue', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Bear', 'Rabbit', 'Snake', 'Bird'],
    },
    {
      'questionText': 'What\'s your favorite meal?',
      'answers': ['Roasted potatoes', 'Hot chocolate', 'Bread']
    }
  ]; // Map

  void _answerQuestion() {

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
          : Result(),
    ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(
              questions[_questionIndex]['questionText'], // Get from Map
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ),
    );
  }
}

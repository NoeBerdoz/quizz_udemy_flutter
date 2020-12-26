import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // take as much with as it can get
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
    ),);
  }
}

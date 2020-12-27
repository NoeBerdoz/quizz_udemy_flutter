import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  // Getter
  String get resultPhrase {
    var resultText = 'Quizz terminé !';
    if (resultScore <= 8) {
      resultText = 'Bravo !';
    } else if (resultScore <= 12) {
      resultText = 'Mouais, pas trop mauvais.';
    } else if (resultScore <= 16) {
      resultText = 'Bof bof...';
    } else {
      resultText = 'Vraiment mauvais.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

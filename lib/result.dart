import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetPage;

  Result(this.resultScore, this.resetPage);

  String get getResult {
    var resultText = 'This ends here!';

    if (resultScore <= 16) {
      resultText = 'You\'re good!';
    } else if (resultScore <= 25) {
      resultText = 'You\'re great!';
    } else if (resultScore <= 30) {
      resultText = 'You\'re awesome!';
    } else {
      resultText = 'Ehek!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResult,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetPage,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}

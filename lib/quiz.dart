import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List questions;
  final int questionIndex;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...questions[questionIndex]['answers'].map((answer) {
          return Button(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
        // Button(_answerQuestionInc),
        // Button(_answerQuestionInc),
        // Button(_answerQuestionInc),
      ],
    );
  }
}

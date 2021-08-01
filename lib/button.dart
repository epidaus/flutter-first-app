import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() actionButton;
  final String answerText;

  Button(this.actionButton, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 2, 20, 2),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
        ),
        child: Text(answerText),
        onPressed: actionButton,
      ),
    );
  }
}

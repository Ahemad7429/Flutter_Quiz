import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressedHandler;

  Answer({
    Key key,
    @required this.answerText,
    @required this.onPressedHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: onPressedHandler,
      ),
    );
  }
}

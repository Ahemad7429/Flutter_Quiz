import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final int index;
  final Function completionHandler;
  final List<Map<String, Object>> questions;

  const Quiz({
    Key key,
    @required this.index,
    @required this.completionHandler,
    @required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questonText: questions[index]['questionText']),
        ...(questions[index]['answerList'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                answerText: answer['text'],
                onPressedHandler: () => completionHandler(answer['score']),
              ),
            )
            .toList(),
      ],
    );
  }
}

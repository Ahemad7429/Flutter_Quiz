import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function completionHandler;

  const Result({
    Key key,
    @required this.score,
    @required this.completionHandler,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: completionHandler,
            child: Text('Reset!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

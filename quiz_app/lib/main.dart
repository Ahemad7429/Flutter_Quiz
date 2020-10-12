import 'package:flutter/material.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

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
  int _selectedIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _selectedIndex = 0;
      _totalScore = 0;
    });
  }

  void answerWasPressed(int score) {
    _totalScore += score;
    setState(() {
      _selectedIndex = _selectedIndex + 1;
    });

    if (_selectedIndex < quizQuestions.length) {
      print('We have more questions');
    } else {
      print('We don\'t have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _selectedIndex < quizQuestions.length
            ? Quiz(
                index: _selectedIndex,
                questions: quizQuestions,
                completionHandler: answerWasPressed,
              )
            : Result(
                score: _totalScore,
                completionHandler: _resetQuiz,
              ),
      ),
    );
  }
}
